// ignore_for_file: constant_identifier_names

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/presentation/home_page.dart';
import 'package:publiccompanies/presentation/launch_page.dart';
import 'package:publiccompanies/utils/analytics_helper.dart';

const String ROUTE_PATH_SPLASH = '/';
const String ROUTE_PATH_HOME = '/home';

final GoRouter router = GoRouter(routes: <GoRoute>[
  GoRoute(
    path: ROUTE_PATH_SPLASH,
    builder: (BuildContext context, GoRouterState state) {
      return const LaunchPage();
    },
  ),
  GoRoute(
    path: ROUTE_PATH_HOME,
    builder: (BuildContext context, GoRouterState state) {
      return const HomePage();
    },
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
