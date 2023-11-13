import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class CrashlyticsReporter {
  Future recordError(dynamic exception, StackTrace? stack, {dynamic reason}) {
    return FirebaseCrashlytics.instance.recordError(exception, stack, reason: reason);
  }
}