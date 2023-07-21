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
    apiKey: 'AIzaSyDvMQRqUdeswrIH-4cJX9s7_znKlKK8Mj8',
    appId: '1:262877294368:web:6c7216e029654deb7d3145',
    messagingSenderId: '262877294368',
    projectId: 'login-example-75f61',
    authDomain: 'login-example-75f61.firebaseapp.com',
    storageBucket: 'login-example-75f61.appspot.com',
    measurementId: 'G-4QR16GCGLW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApMeOFTL9aBOuoFde8Jw_KN3OfXFX3Phc',
    appId: '1:262877294368:android:46bc3aba8da17dcc7d3145',
    messagingSenderId: '262877294368',
    projectId: 'login-example-75f61',
    storageBucket: 'login-example-75f61.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkjJsIgJImqQX1r7-s78NUAxIkgphAYEM',
    appId: '1:262877294368:ios:2b43344ffe21d8ac7d3145',
    messagingSenderId: '262877294368',
    projectId: 'login-example-75f61',
    storageBucket: 'login-example-75f61.appspot.com',
    iosClientId: '262877294368-opaod0bm94jm9g5o25goo7ggnaicahut.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginFirebase2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkjJsIgJImqQX1r7-s78NUAxIkgphAYEM',
    appId: '1:262877294368:ios:e387a6b87375182a7d3145',
    messagingSenderId: '262877294368',
    projectId: 'login-example-75f61',
    storageBucket: 'login-example-75f61.appspot.com',
    iosClientId: '262877294368-vhg8pccfk8ec7nv7afkm998db9scie4q.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginFirebase2.RunnerTests',
  );
}