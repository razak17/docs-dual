import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mediboard/src/app.dart';
import 'package:mediboard/src/widget/main_nav.dart';

import '../features/recent_activity/screens/recent_activity.dart';
import 'api_service.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  log(message.notification?.title.toString() ?? '', name: 'title');
  log(message.notification?.body.toString() ?? '', name: 'body');
  log(message.data.toString(), name: 'title');
  log('dhkansc');
}

class NotificationAPI {
  final _firebaseMessaging = FirebaseMessaging.instance;
  final _androidChannel = const AndroidNotificationChannel(
      'high_importance_channel', 'High Importance Channel');
  final _localNotifications = FlutterLocalNotificationsPlugin();

  void handleMessage(RemoteMessage? msg) {
    if (msg == null) return;
    log(msg.notification?.title.toString() ?? '');
    log(msg.notification?.body.toString() ?? '', name: "This");
    log(msg.data.toString());
    final data = msg.data;
    final type = data['type'] ?? '';
    final subject = data['subject'] ?? '';
    log("Notification: $type $subject");
    log("Notification Data: ${msg.data}");

    if (type == 'NewRecordAdded' && subject == 'Visits') {
      Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(
              builder: (context) => const RecentActivity(
                    selectedIndex: 1,
                  )));
    } else if (type == 'NewRecordAdded' && subject == 'Lab Tests') {
      Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(
              builder: (context) => const RecentActivity(
                    selectedIndex: 2,
                  )));
    } else if (type == 'NewRecordAdded' && subject == 'Imaging') {
      Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(
              builder: (context) => const RecentActivity(
                    selectedIndex: 3,
                  )));
    } else if (type == 'NewRecordAdded' && subject == 'Vaccinations') {
      Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(
              builder: (context) => const RecentActivity(
                    selectedIndex: 4,
                  )));
    } else if (type == 'NewRecordAdded' && subject == 'Procedures') {
      Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(
              builder: (context) => const RecentActivity(
                    selectedIndex: 5,
                  )));
    } else if (type == 'NewRecordAdded' && subject == 'Diagnosis') {
      Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(
              builder: (context) => const RecentActivity(
                    selectedIndex: 6,
                  )));
    } else if (type == 'NewRecordAdded' && subject == 'Pathology') {
      Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(
              builder: (context) => const RecentActivity(
                    selectedIndex: 7,
                  )));
    } else {
      Navigator.push(navigatorKey.currentContext!,
          MaterialPageRoute(builder: (context) => const MainNavBar()));
    }
  }

  Future initPushNotification() async {
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true, sound: true, badge: true);
    _firebaseMessaging.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    FirebaseMessaging.onMessage.listen((event) {
      final notification = event.notification;
      if (notification == null) return;
      // _localNotifications.show(
      //     notification.hashCode,
      //     notification.title,
      //     notification.body,
      //     NotificationDetails(
      //         android: AndroidNotificationDetails(
      //             _androidChannel.id, _androidChannel.name,
      //             channelDescription: _androidChannel.description,
      //             icon: '@drawable/ic_launcher')),
      //     payload: jsonEncode(event.toMap()));
    });
  }
// getPermission() async {
//     await NotificationAPI().initNotifications();

//   }

  Future initLocalNotifications() async {
    const iOS = IOSInitializationSettings();
    const android = AndroidInitializationSettings('@drawable/ic_launcher');
    const settings = InitializationSettings(android: android, iOS: iOS);
    await _localNotifications.initialize(
      settings,
      onSelectNotification: (payload) {
        final message = RemoteMessage.fromMap(jsonDecode(payload!));
        handleMessage(message);
      },
    );
    if (Platform.isAndroid) {
      await _localNotifications
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(_androidChannel);
    }
    if (Platform.isIOS) {
      await _localNotifications
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    }
  }

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    await _firebaseMessaging.setAutoInitEnabled(true);
    final fcmToken = await _firebaseMessaging.getToken();
    log(fcmToken ?? '');
    await initPushNotification();
    Future.delayed(const Duration(seconds: 5), () async {
      NotificationSettings settings =
          await FirebaseMessaging.instance.requestPermission();
      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        final fcmToken = await FirebaseMessaging.instance.getToken();
        await FirebaseMessaging.instance.setAutoInitEnabled(true);
        APIService().sendFCMToken(fcmToken!);
        log("FCMToken $fcmToken");
      }
    });
  }
}
