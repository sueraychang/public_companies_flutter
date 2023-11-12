import 'package:convert/convert.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

bool isDebug() {
  if (kDebugMode || kProfileMode) {
    return true;
  } else {
    return false;
  }
}

var log = Logger(
    printer: PrettyPrinter(
  methodCount: 1,
  lineLength: 80,
  printTime: false,
));

final _sourceDateFormatter = FixedDateTimeFormatter('YYYYMMDD');
final _destDateFormatter = FixedDateTimeFormatter('YYYY/MM/DD');

NumberFormat _separatorFormatter = NumberFormat("#,###");

String reformatDate(String input) {
  try {
    return _destDateFormatter.encode(_sourceDateFormatter.decode(input));
  } catch (e) {
    log.e('$e');
    return input;
  }
}

String formatWithSeparator(String number) {
  return _separatorFormatter.format(int.parse(number));
}

bool isValidUrl(String input) {
  RegExp exp = RegExp(r'(?:(?:https?):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+');
  return exp.hasMatch(input.trim());
}

Future<void> launchWebsite(String input) async {
  if (!input.startsWith('https://')) {
    input = 'https://$input';
  }

  log.d('launchWebsite: $input');
  if (!await launchUrl(
    Uri.parse(input.trim()),
    mode: LaunchMode.externalApplication,
  )) {
    final message = 'Could not launch $input';
    await FirebaseCrashlytics.instance
        .recordError(Exception(message), null, reason: message);
  }
}
