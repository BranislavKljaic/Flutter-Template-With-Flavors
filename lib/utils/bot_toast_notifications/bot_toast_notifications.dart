import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class BotToastNotifications {
  static void showErrorNotification(BuildContext context, String title) {
    BotToast.showSimpleNotification(
      title: title,
      hideCloseButton: true,
      titleStyle: const TextStyle(color: Colors.white),
      backgroundColor: Colors.red,
    );
  }

  static void showSuccessfulNotification(BuildContext context, String title) {
    BotToast.showSimpleNotification(
      title: title,
      hideCloseButton: true,
      titleStyle: const TextStyle(color: Colors.white),
      backgroundColor: Colors.green,
    );
  }

  static void showErrorNotificationWithDuration(BuildContext context, String title, int durationSeconds) {
    BotToast.showSimpleNotification(
      title: title,
      hideCloseButton: true,
      titleStyle: const TextStyle(color: Colors.white),
      backgroundColor: Colors.red,
      duration: Duration(seconds: durationSeconds),
    );
  }
}
