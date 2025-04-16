import 'dart:async';
// import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class BackgroundService {
  static final BackgroundService _instance = BackgroundService._internal();
  factory BackgroundService() => _instance;
  BackgroundService._internal();

  final FlutterBackgroundService _service = FlutterBackgroundService();

  Future<void> initialize() async {
    const notificationChannelId = 'my_foreground';
    const notificationId = 888;

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      notificationChannelId,
      'MY FOREGROUND SERVICE',
      description: 'This channel is used for important notifications.',
      importance: Importance.high,
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);

    await _service.configure(
      androidConfiguration: AndroidConfiguration(
        onStart: onStart,
        autoStart: true,
        isForegroundMode: false,
        notificationChannelId: notificationChannelId,
        initialNotificationTitle: 'Background Service',
        initialNotificationContent: 'Initializing',
        foregroundServiceNotificationId: notificationId,
      ),
      iosConfiguration: IosConfiguration(
        autoStart: true,
        onForeground: onStart,
        onBackground: onIosBackground,
      ),
    );
  }

  Future<void> startService() async {
    if (!(await _service.isRunning())) {
      await _service.startService();
    }
  }

  static Future<bool> onIosBackground(ServiceInstance service) async {
    return true;
  }

  @pragma('vm:entry-point')
  static Future<void> onStart(ServiceInstance service) async {
    DartPluginRegistrant.ensureInitialized();
    debugPrint('Background service started');
    // final appsToSend = await InstalledAppService.getAppsToSend();
    // if (appsToSend.isNotEmpty) {
    //   log("Sending updated apps to backend: $appsToSend");

    // Send data to backend (implement API call here)
    // Example: await sendAppsToBackend(appsToSend);

    //   service.invoke('updateApps', {'apps': appsToSend});
    // } else {
    //   debugPrint("No changes in installed apps.");
    // }
    // log("Installed Apps: $appsToSend");

    Timer.periodic(const Duration(seconds: 2), (timer) async {
      debugPrint("Background Timer : ${DateTime.now()}");

      service.invoke('updateApps', {'apps': "Hello"});
    });

    service.on('stopService').listen((event) {
      service.stopSelf();
    });
  }
}
