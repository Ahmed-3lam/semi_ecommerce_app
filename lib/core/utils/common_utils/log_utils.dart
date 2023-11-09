import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
class Log {
  static const perform = MethodChannel("x_log");

  static var logger = Logger();

  static d(String msg, {tag = 'X-LOG'}) {
    if (kDebugMode)
      logger.d(msg);
  }

  static w(String msg, {tag = 'X-LOG'}) {
    if (kDebugMode)
    logger.w(msg);
  }

  static i(String msg, {tag = 'X-LOG'}) {
    if (kDebugMode)
    logger.i(msg);
  }

  static e(String msg, {tag = 'X-LOG'}) {
    if (kDebugMode)
    logger.e(msg);
  }

  static json(String msg, {tag = 'X-LOG'}) {
    if (kDebugMode)
    try {
      logger.wtf(msg);
    } catch (e) {
      d(msg);
    }
  }
}
