// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCFA2fuIApY3KbtxT8pZjqsD1mjX-QKsLE',
    appId: '1:502440591970:web:71caf4904926223b52873b',
    messagingSenderId: '502440591970',
    projectId: 'sanhaproject-2b49c',
    authDomain: 'sanhaproject-2b49c.firebaseapp.com',
    storageBucket: 'sanhaproject-2b49c.appspot.com',
    measurementId: 'G-MSVQ521R0V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-3o6uf9zfcAdDDK30c3Bl76NKxpMO4nU',
    appId: '1:502440591970:android:414e1b30f9cf405a52873b',
    messagingSenderId: '502440591970',
    projectId: 'sanhaproject-2b49c',
    storageBucket: 'sanhaproject-2b49c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMnOpDcemdPQVY4G_J_oa3ltvcJKLpfyE',
    appId: '1:502440591970:ios:93fae80a57985ae152873b',
    messagingSenderId: '502440591970',
    projectId: 'sanhaproject-2b49c',
    storageBucket: 'sanhaproject-2b49c.appspot.com',
    androidClientId: '502440591970-oo9ann5v82segdg1ki4ndse9lkhq5f26.apps.googleusercontent.com',
    iosClientId: '502440591970-7jtrh2prqgg0umcaejjm0drnv54b0pd7.apps.googleusercontent.com',
    iosBundleId: '01',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMnOpDcemdPQVY4G_J_oa3ltvcJKLpfyE',
    appId: '1:502440591970:ios:7938bc7058b7459552873b',
    messagingSenderId: '502440591970',
    projectId: 'sanhaproject-2b49c',
    storageBucket: 'sanhaproject-2b49c.appspot.com',
    androidClientId: '502440591970-oo9ann5v82segdg1ki4ndse9lkhq5f26.apps.googleusercontent.com',
    iosClientId: '502440591970-ro4276c96a9j47j3s1vddtj2lhd0b3a8.apps.googleusercontent.com',
    iosBundleId: '02',
  );
}