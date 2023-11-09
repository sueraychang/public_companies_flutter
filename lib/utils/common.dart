import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

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