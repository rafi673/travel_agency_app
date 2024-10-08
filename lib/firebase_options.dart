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
    apiKey: 'AIzaSyCgxSPZ__Y2G_BgLFR9HiSl_vlt0Hf5i-o',
    appId: '1:187182098550:web:496614204e7fb9ced89757',
    messagingSenderId: '187182098550',
    projectId: 'travel-agency-11fbf',
    authDomain: 'travel-agency-11fbf.firebaseapp.com',
    storageBucket: 'travel-agency-11fbf.appspot.com',
  );

 

 

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-lOCocqwUXZi2jHxCz9gOTe5dPWMhhj4',
    appId: '1:724884602258:android:495a92714762cbbf7b154b',
    messagingSenderId: '724884602258',
    projectId: 'travel-agency-796cd',
    storageBucket: 'travel-agency-796cd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQIeDOle9xlfrO-FzPd-yzEtDnadb4KBM',
    appId: '1:724884602258:ios:426119c91864ba7a7b154b',
    messagingSenderId: '724884602258',
    projectId: 'travel-agency-796cd',
    storageBucket: 'travel-agency-796cd.appspot.com',
    iosBundleId: 'com.example.fabTechSol',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQIeDOle9xlfrO-FzPd-yzEtDnadb4KBM',
    appId: '1:724884602258:ios:426119c91864ba7a7b154b',
    messagingSenderId: '724884602258',
    projectId: 'travel-agency-796cd',
    storageBucket: 'travel-agency-796cd.appspot.com',
    iosBundleId: 'com.example.fabTechSol',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB8WsA5G-_tw_jWM4fiFKGNebZnF0GyKSE',
    appId: '1:724884602258:web:16769e06abbe90b37b154b',
    messagingSenderId: '724884602258',
    projectId: 'travel-agency-796cd',
    authDomain: 'travel-agency-796cd.firebaseapp.com',
    storageBucket: 'travel-agency-796cd.appspot.com',
    measurementId: 'G-3YVVEDS1QZ',
  );

}