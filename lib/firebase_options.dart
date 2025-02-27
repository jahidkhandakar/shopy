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
    apiKey: 'AIzaSyC5UlbfpXAgPBc-_2DDXEPxBivoXBnK33o',
    appId: '1:337047029733:web:60ff9573703259846f110c',
    messagingSenderId: '337047029733',
    projectId: 'shopy-125aa',
    authDomain: 'shopy-125aa.firebaseapp.com',
    storageBucket: 'shopy-125aa.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuvgKzV6tBvNsTvDR8SUycI63Kfa41X58',
    appId: '1:337047029733:android:4eea2dcb11c9eafd6f110c',
    messagingSenderId: '337047029733',
    projectId: 'shopy-125aa',
    storageBucket: 'shopy-125aa.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGZffKswEU5dV2H3CSaI2ZRTabPWrLBwc',
    appId: '1:337047029733:ios:5617118fe7d8f1756f110c',
    messagingSenderId: '337047029733',
    projectId: 'shopy-125aa',
    storageBucket: 'shopy-125aa.firebasestorage.app',
    iosBundleId: 'com.example.shopy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGZffKswEU5dV2H3CSaI2ZRTabPWrLBwc',
    appId: '1:337047029733:ios:5617118fe7d8f1756f110c',
    messagingSenderId: '337047029733',
    projectId: 'shopy-125aa',
    storageBucket: 'shopy-125aa.firebasestorage.app',
    iosBundleId: 'com.example.shopy',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC5UlbfpXAgPBc-_2DDXEPxBivoXBnK33o',
    appId: '1:337047029733:web:90fbddd64bce4b186f110c',
    messagingSenderId: '337047029733',
    projectId: 'shopy-125aa',
    authDomain: 'shopy-125aa.firebaseapp.com',
    storageBucket: 'shopy-125aa.firebasestorage.app',
  );
}
