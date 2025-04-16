import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/services.dart';

const methodChannel = MethodChannel('flutter_screentime');

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<String?> getFCMToken() async {
    String? token = await _firebaseMessaging.getToken();
    log("FCM Token: $token");
    return token;
  }

  Future<void> initialize() async {
    await requestPermission();
    await _setupLocalNotifications();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      log("FCM Data Message: $message");
      if (message.data.containsKey("isLocked")) {
        String isLocked = message.data['isLocked'];
        log("Locked Status : $isLocked");
        if (isLocked == "true") {
          await methodChannel.invokeMethod('blockApp');
        } else if (isLocked == "false") {
          await methodChannel.invokeMethod('unblockApp');
        }
      }
      log("Foreground Message Received: ${message.notification?.title}");
      _showLocalNotification(message);
    });

    FirebaseMessaging.instance.onTokenRefresh.listen((newToken) {
      log("New Token : $newToken");
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  Future<void> requestPermission() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    log("Handling Background Message: ${message.messageId}");
  }

  Future<void> _setupLocalNotifications() async {
    const AndroidInitializationSettings androidInitSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final DarwinInitializationSettings iosInitSettings =
        DarwinInitializationSettings(
          requestSoundPermission: true,
          requestBadgePermission: true,
          requestAlertPermission: true,
        );

    InitializationSettings initSettings = InitializationSettings(
      android: androidInitSettings,
      iOS: iosInitSettings,
    );

    await _localNotificationsPlugin.initialize(initSettings);
  }

  Future<void> _showLocalNotification(RemoteMessage message) async {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'high_importance_channel',
          'High Importance Notifications',
          importance: Importance.max,
          priority: Priority.high,
        );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
    );

    await _localNotificationsPlugin.show(
      0,
      message.notification?.title,
      message.notification?.body,
      notificationDetails,
    );
  }
}
