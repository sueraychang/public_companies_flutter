import 'dart:async';
import 'dart:isolate';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:publiccompanies/data/default_data_repository.dart';
import 'package:publiccompanies/data/source/local/db_helper.dart';
import 'package:publiccompanies/data/source/local/local_data_source.dart';
import 'package:publiccompanies/data/source/remote/api_helper.dart';
import 'package:publiccompanies/data/source/remote/remote_data_source.dart';
import 'package:publiccompanies/domain/cubit/collections_cubit.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/firebase_options.dart';
import 'package:publiccompanies/utils/build_context_extension.dart';
import 'package:publiccompanies/utils/common.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:publiccompanies/utils/go_router.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(!isDebug());

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    Isolate.current.addErrorListener(RawReceivePort((pair) async {
      final List<dynamic> errorAndStacktrace = pair;
      await FirebaseCrashlytics.instance.recordError(
        errorAndStacktrace.first,
        errorAndStacktrace.last,
        fatal: true,
      );
    }).sendPort);

    final dbHelper = DbHelper();
    await dbHelper.init();

    runApp(Root(
      dbHelper: dbHelper,
    ));
  },
      (error, stack) =>
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true));
}

/// Create global repository, bloc and cubit in Root widget.
class Root extends StatelessWidget {
  final DbHelper dbHelper;
  const Root({super.key, required this.dbHelper});

  @override
  Widget build(BuildContext context) {
    final repo = DefaultDataRepository(
      local: LocalDataSource(dbHelper: dbHelper),
      remote: RemoteDataSource(apiHelper: ApiHelper()),
    );
    return RepositoryProvider<DataRepository>(
      create: (_) => repo,
      child: BlocProvider(
        create: (_) => CollectionsCubit(repo: repo),
        child: const App(),
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: 'app',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (BuildContext context) => context.l10n.appTitle,
      theme: ThemeData.light(useMaterial3: true),
      routerConfig: router,
      builder: (context, child) {
        double scale = MediaQuery.of(context).textScaleFactor;
        scale = scale > 1.3 ? 1.3 : scale;
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
          child: child!,
        );
      },
    );
  }
}
