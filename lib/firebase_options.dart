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
    apiKey: 'AIzaSyAv3hrYUy79KYiK1xn0E967gM9NCLcRpnk',
    appId: '1:952912586907:web:67020c00085a513744be3e',
    messagingSenderId: '952912586907',
    projectId: 'sample-project-c45ce',
    authDomain: 'sample-project-c45ce.firebaseapp.com',
    storageBucket: 'sample-project-c45ce.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAKCM-vOg7lWicErMtEueXCMntW9lF7uc',
    appId: '1:952912586907:android:22cdc693b57f315244be3e',
    messagingSenderId: '952912586907',
    projectId: 'sample-project-c45ce',
    storageBucket: 'sample-project-c45ce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPeMTH8WFKhh6Mw0wl29LF7Nhd6gosiVA',
    appId: '1:952912586907:ios:bcd580e0bdf07b6144be3e',
    messagingSenderId: '952912586907',
    projectId: 'sample-project-c45ce',
    storageBucket: 'sample-project-c45ce.appspot.com',
    iosBundleId: 'com.example.examProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPeMTH8WFKhh6Mw0wl29LF7Nhd6gosiVA',
    appId: '1:952912586907:ios:bcd580e0bdf07b6144be3e',
    messagingSenderId: '952912586907',
    projectId: 'sample-project-c45ce',
    storageBucket: 'sample-project-c45ce.appspot.com',
    iosBundleId: 'com.example.examProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAv3hrYUy79KYiK1xn0E967gM9NCLcRpnk',
    appId: '1:952912586907:web:0c0ff00fe8cea31644be3e',
    messagingSenderId: '952912586907',
    projectId: 'sample-project-c45ce',
    authDomain: 'sample-project-c45ce.firebaseapp.com',
    storageBucket: 'sample-project-c45ce.appspot.com',
  );
}
