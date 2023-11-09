// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:publiccompanies/utils/common.dart';

Future logScreenName({
  required String? screenName,
}) async {
  log.d('start log screen_view $screenName');
  await FirebaseAnalytics.instance.logScreenView(
    screenName: screenName,
  );
  log.d('log screen_view $screenName Success');
}
