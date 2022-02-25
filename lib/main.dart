import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'Login.dart';
import 'firebase_options.dart';
import 'services/auth.dart';

import 'models/MyUser.dart';
import 'wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
  // runApp(MultiProvider(providers: [
  //   Provider<Person>(create: (_) => Person(name: '박철호', age: 65)),
  //   ChangeNotifierProvider(create: (_) => ApiService()),
  // ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //StreamProvider<fbUser>(create: (_) => AuthService().userstate),
        StreamProvider<fbUser>.value(value: AuthService().userstate),
        //Provider<String>.value(value: "Park")
      ],
      child: MaterialApp(
        title: "Provider Test",
        home: Wrapper(),
      ),
    );
  }
}
//mutliprovider와 환자부분 개선해 보자
