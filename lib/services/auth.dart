import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/MyUser.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  fbUser? _userFromFirebase(User? user) {
    return user != null ? fbUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<fbUser?> get userstate {
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
}
