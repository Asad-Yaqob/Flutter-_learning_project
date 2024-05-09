// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCKo_IU0oUuTSd3fy4f1oEKRmvDzTVY_6U',
    appId: '1:422168897541:web:d9381207fe5822deacd46c',
    messagingSenderId: '422168897541',
    projectId: 'learning-9c116',
    authDomain: 'learning-9c116.firebaseapp.com',
    storageBucket: 'learning-9c116.appspot.com',
    measurementId: 'G-CBNC7DWX0D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAO2G0RLxPVDkHtl6L8ew6jfoJGXIKzdhY',
    appId: '1:422168897541:android:4417f248fcb25be1acd46c',
    messagingSenderId: '422168897541',
    projectId: 'learning-9c116',
    storageBucket: 'learning-9c116.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQeh0HrFpAG4kmIQG1Q7X4UWgzEVkg5RM',
    appId: '1:422168897541:ios:64dc22e4dddd5149acd46c',
    messagingSenderId: '422168897541',
    projectId: 'learning-9c116',
    storageBucket: 'learning-9c116.appspot.com',
    iosBundleId: 'com.example.learningProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQeh0HrFpAG4kmIQG1Q7X4UWgzEVkg5RM',
    appId: '1:422168897541:ios:64dc22e4dddd5149acd46c',
    messagingSenderId: '422168897541',
    projectId: 'learning-9c116',
    storageBucket: 'learning-9c116.appspot.com',
    iosBundleId: 'com.example.learningProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCKo_IU0oUuTSd3fy4f1oEKRmvDzTVY_6U',
    appId: '1:422168897541:web:ea1dddc3fec1c561acd46c',
    messagingSenderId: '422168897541',
    projectId: 'learning-9c116',
    authDomain: 'learning-9c116.firebaseapp.com',
    storageBucket: 'learning-9c116.appspot.com',
    measurementId: 'G-C9VBXGCNRK',
  );
}
