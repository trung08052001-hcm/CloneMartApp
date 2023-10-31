import 'dart:developer';

import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void logi({required String message, String? tag, BuildContext? context}) {
  getIt<LoggerConfig>().logi(message: message, context: context, tag: tag);
}

void loge({String? tag, BuildContext? context, required String message}) {
  getIt<LoggerConfig>().loge(message: message, context: context, tag: tag);
}

class LoggerConfig {
  LoggerConfig();

  void logi({
    required String message,
    String? tag,
    BuildContext? context,
  }) {
    if (kReleaseMode) {
      return;
    }
    if (context == null) {
      log('⚠️${tag ?? ''}: $message');
    } else {
      log('⚠️${tag ?? ''} from ${context.widget}: $message');
    }
  }

  void loge({
    required String message,
    String? tag,
    BuildContext? context,
  }) {
    if (kReleaseMode) {
      return;
    }
    if (context == null) {
      log('🆘️${tag ?? ''}: $message');
    } else {
      log('🆘️${tag ?? ''} from: ${context.widget}: $message');
    }
  }
}
