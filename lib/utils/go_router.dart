// ignore_for_file: constant_identifier_names

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/presentation/collections_page.dart';
import 'package:publiccompanies/presentation/companies_by_industry_page.dart';
import 'package:publiccompanies/presentation/company/company_page.dart';
import 'package:publiccompanies/presentation/home_page.dart';
import 'package:publiccompanies/presentation/industries_page.dart';
import 'package:publiccompanies/presentation/launch_page.dart';
import 'package:publiccompanies/utils/analytics_helper.dart';

const String ROUTE_PATH_SPLASH = '/';
const String ROUTE_PATH_INDUSTRIES = '/industries';
const String ROUTE_PATH_COMPANIES_BY_INDUSTRY = '/industry/:industryCode';
const String ROUTE_PATH_COMPANY = '/company/:companyCode';
const String ROUTE_PATH_COLLECTION = '/collection';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _industriesNavigatorKey = GlobalKey<NavigatorState>();
final _collectionsNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: ROUTE_PATH_SPLASH,
  navigatorKey: _rootNavigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: ROUTE_PATH_SPLASH,
      parentNavigatorKey: _rootNavigatorKey,
      pageBuilder: (context, state) => const CupertinoPage(
        restorationId: 'launchPage',
        child: LaunchPage(),
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomePage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _industriesNavigatorKey,
          initialLocation: ROUTE_PATH_INDUSTRIES,
          routes: [
            GoRoute(
              path: ROUTE_PATH_INDUSTRIES,
              parentNavigatorKey: _industriesNavigatorKey,
              pageBuilder: (context, state) => const CupertinoPage(
                restorationId: 'industriesPage',
                child: IndustriesPage(),
              ),
            ),
            GoRoute(
              path: ROUTE_PATH_COMPANIES_BY_INDUSTRY,
              parentNavigatorKey: _industriesNavigatorKey,
              pageBuilder: (context, state) => CupertinoPage(
                restorationId: 'companiesByIndustryPage',
                child: CompaniesByIndustryPage(
                  industryCode: state.pathParameters['industryCode']!,
                ),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _collectionsNavigatorKey,
          initialLocation: ROUTE_PATH_COLLECTION,
          routes: [
            GoRoute(
              path: ROUTE_PATH_COLLECTION,
              parentNavigatorKey: _collectionsNavigatorKey,
              pageBuilder: (context, state) => const CupertinoPage(
                restorationId: 'collectionsPage',
                child: CollectionsPage(),
              ),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: ROUTE_PATH_COMPANY,
      parentNavigatorKey: _rootNavigatorKey,
      pageBuilder: (context, state) => CupertinoPage(
        restorationId: 'companyPage',
        child: CompanyPage(
          companyCode: state.pathParameters['companyCode']!,
        ),
      ),
    ),
  ],
);

class GoRouterObserver extends NavigatorObserver {
  final FirebaseAnalytics analytics;
  GoRouterObserver({required this.analytics});

  @override
  void didPush(Route route, Route? previousRoute) {
    if (route.settings.name != null) {
      logScreenName(screenName: route.settings.name);
    }
  }
}

T? castOrNull<T>(dynamic x) => x is T ? x : null;
