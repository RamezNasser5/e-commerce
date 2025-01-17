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
    apiKey: 'AIzaSyD2ICVNgmUY5fmdIdtoi5GqANS1LzMY7yw',
    appId: '1:322559361217:web:54efbe90fe61d85b371440',
    messagingSenderId: '322559361217',
    projectId: 'e-commerce-c42ec',
    authDomain: 'e-commerce-c42ec.firebaseapp.com',
    storageBucket: 'e-commerce-c42ec.appspot.com',
    measurementId: 'G-54YTKPKD03',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcV2W4CFEotJQkHa9EaR-Nb5sJ9WuLmdI',
    appId: '1:322559361217:android:0b1f2581de28021d371440',
    messagingSenderId: '322559361217',
    projectId: 'e-commerce-c42ec',
    storageBucket: 'e-commerce-c42ec.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxWYakocMEc-_H_F8-Tge4zor3gK1Y2Tc',
    appId: '1:322559361217:ios:9c4e651de8116df6371440',
    messagingSenderId: '322559361217',
    projectId: 'e-commerce-c42ec',
    storageBucket: 'e-commerce-c42ec.appspot.com',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxWYakocMEc-_H_F8-Tge4zor3gK1Y2Tc',
    appId: '1:322559361217:ios:9c4e651de8116df6371440',
    messagingSenderId: '322559361217',
    projectId: 'e-commerce-c42ec',
    storageBucket: 'e-commerce-c42ec.appspot.com',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD2ICVNgmUY5fmdIdtoi5GqANS1LzMY7yw',
    appId: '1:322559361217:web:43025592a85e3bbb371440',
    messagingSenderId: '322559361217',
    projectId: 'e-commerce-c42ec',
    authDomain: 'e-commerce-c42ec.firebaseapp.com',
    storageBucket: 'e-commerce-c42ec.appspot.com',
    measurementId: 'G-PFL9M8EBJ0',
  );
}
