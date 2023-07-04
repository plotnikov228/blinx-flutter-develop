import 'dart:async';
import 'package:blinx/injection/dependencies.dart';
import 'package:blinx/presentation/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/app_flavor.dart';
final _notificationStreamController = StreamController<RemoteMessage>.broadcast();
Stream<RemoteMessage> get notificationStream => _notificationStreamController.stream;

void mainCommon(AppFlavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await DependencyManager.inject(flavor);
  configureFirebaseMessaging();
  configureFirebaseCrashlytics();
  runApp(App());
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  _notificationStreamController.add(message);
}

void configureFirebaseMessaging() {
  var firebaseMessaging = FirebaseMessaging.instance;

  FirebaseMessaging.instance.getToken().then(
    (token) {
      debugPrint('TOKEN:: ${token.toString()}');
    },
  );
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    debugPrint('Got a message whilst in the foreground!');
    debugPrint('Message data: ${message.data}');
    _notificationStreamController.add(message);

    if (message.notification != null) {
      debugPrint('Message also contained a notification: ${message.notification?.toMap()}');
    }
  });

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    debugPrint('onMessageOpenedApp: $message');
    _notificationStreamController.add(message);
  });

  firebaseMessaging.requestPermission(sound: true, badge: true, alert: true);
}

void configureFirebaseCrashlytics() {
  /// Report to crashlytics on error
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
}
