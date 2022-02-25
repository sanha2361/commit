import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'listtest.dart';

class firestore extends StatefulWidget {
  const firestore({Key? key, required String title}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<firestore> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  String name = '';

  Future write() async {
    //await Firebase.initializeApp();
    await db.collection('test').add({
      'name': name,
    });
  }

  Future testData() async {
    var data = await db.collection('test').get();
    var details = data.docs.toList();

    details.forEach((d) {
      print(d.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('firestore web')),
        body: Center(
          child: Column(
            children: [
              //Text('login'),
              Text('firestore web test'),
              IconButton(
                  onPressed: () {
                    write();
                  },
                  icon: Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    testData();
                  },
                  icon: Icon(Icons.add)),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: '입력하세요'),
                onChanged: (val) {
                  setState(() => name = val);
                },
              ),
              list(),
            ],
          ),
        ));
  }
}
