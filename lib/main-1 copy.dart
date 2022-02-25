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
  //   ChangeNotifierProvider(create: (_) => BleProvider()),
  //   ChangeNotifierProvider(create: (_) => ApiService()),
  // ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //bool loading=false;

  @override
  Widget build(BuildContext context) {
    return StreamProvider<fbUser>.value(
      value: AuthService().userstate,
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
        //home: LoginPage(),
      ),
    );
  }
}

//mutliprovider와 환자부분 개선해 보자
