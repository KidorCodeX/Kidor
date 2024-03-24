// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAN-utEdFJ6ZaAzCRwffp3NtirZIxcBLMM',
    appId: '1:908346899981:web:1963793ba3bcef6b88df44',
    messagingSenderId: '908346899981',
    projectId: 'kidor-8fdec',
    authDomain: 'kidor-8fdec.firebaseapp.com',
    storageBucket: 'kidor-8fdec.appspot.com',
    measurementId: 'G-BVK1VKJE1X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgjbpl6uO0KCLZhoEL0zPRP_CCFsVT29Y',
    appId: '1:908346899981:android:f4b8b75c82a6742388df44',
    messagingSenderId: '908346899981',
    projectId: 'kidor-8fdec',
    storageBucket: 'kidor-8fdec.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8RAd-By-VqsByozEC81c9QJrc1edtCHY',
    appId: '1:908346899981:ios:12e9ad9d9aeda4bd88df44',
    messagingSenderId: '908346899981',
    projectId: 'kidor-8fdec',
    storageBucket: 'kidor-8fdec.appspot.com',
    iosBundleId: 'com.example.myFirstApp',
  );
  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA8RAd-By-VqsByozEC81c9QJrc1edtCHY',
    appId: '1:908346899981:ios:28f8d0ef2c2b73c588df44',
    messagingSenderId: '908346899981',
    projectId: 'kidor-8fdec',
    storageBucket: 'kidor-8fdec.appspot.com',
    iosBundleId: 'com.example.myFirstApp.RunnerTests',
  );
}