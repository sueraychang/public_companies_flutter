// ignore_for_file: constant_identifier_names

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/presentation/companies_by_industry_page.dart';
import 'package:publiccompanies/presentation/company/company_page.dart';
import 'package:publiccompanies/presentation/home_page.dart';
import 'package:publiccompanies/presentation/launch_page.dart';
import 'package:publiccompanies/utils/analytics_helper.dart';

const String ROUTE_PATH_SPLASH = '/';
const String ROUTE_PATH_HOME = '/home';
const String ROUTE_PATH_COMPANIES_BY_INDUSTRY = '/industry/:industryCode';
const String ROUTE_PATH_COMPANY = '/company/:companyCode';

final GoRouter router =
    GoRouter(restorationScopeId: 'router', routes: <GoRoute>[
  GoRoute(
    path: ROUTE_PATH_SPLASH,
    // builder: (BuildContext context, GoRouterState state) {
    //   return const LaunchPage();
    // },
    pageBuilder: (context, state) => const CupertinoPage(
      restorationId: 'launchPage',
      child: LaunchPage(),
    ),
  ),
  GoRoute(
    path: ROUTE_PATH_HOME,
    // builder: (BuildContext context, GoRouterState state) {
    //   return const HomePage();
    // },
    pageBuilder: (context, state) => const CupertinoPage(
      restorationId: 'homePage',
      child: HomePage(),
    ),
  ),
  GoRoute(
    path: ROUTE_PATH_COMPANIES_BY_INDUSTRY,
    // builder: (BuildContext context, GoRouterState state) {
    //   return CompaniesByIndustryPage(
    //     industryCode: state.pathParameters['industryCode']!,
    //   );
    // },
    pageBuilder: (context, state) => CupertinoPage(
      restorationId: 'companiesByIndustryPage',
      child: CompaniesByIndustryPage(
        industryCode: state.pathParameters['industryCode']!,
      ),
    ),
  ),
  GoRoute(
    path: ROUTE_PATH_COMPANY,
    // builder: (BuildContext context, GoRouterState state) {
    //   return CompanyPage(
    //     companyCode: state.pathParameters['companyCode']!,
    //   );
    // },
    pageBuilder: (context, state) => CupertinoPage(
      restorationId: 'companyPage',
      child: CompanyPage(
        companyCode: state.pathParameters['companyCode']!,
      ),
    ),
  ),
], observers: [
  GoRouterObserver(analytics: FirebaseAnalytics.instance)
]);

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
