import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'firestoretest.dart';
import 'listtest.dart';
import 'models/MyUser.dart';

import 'home/home.dart';
import 'login.dart';
import 'providertest.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<fbUser>(context);

    //Loading();
    // return either the Home or Authenticate widget
    //return SignIn();

    if (user == null) {
      return LoginPage();
    } else {
      //return Home();
      print(user.uid);
      return const firestore(
        title: '',
      );
      //return const Listtest();
    }
  }
}
