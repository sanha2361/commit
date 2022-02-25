import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Listtest extends StatefulWidget {
  const Listtest({Key? key}) : super(key: key);

  @override
  _ListtestState createState() => _ListtestState();
}

class _ListtestState extends State<Listtest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('list')),
      body: list(),
    );
  }
}

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //     itemCount: drug.length,
    //     itemBuilder: (context, index) {
    //       return Text(drug[index]);
    //     });
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('test').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            // List list = [];
            // for (DocumentSnapshot dc in snapshot.data?.docs) {
            //   print(dc['name']);
            //   list.add(dc);
            // }
            return ListView.builder(
                reverse: true,
                shrinkWrap: true,
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  //return Text(snapshot.data?.docs[index]['name']);
                  return Container(
                    child: Column(
                      children: [
                        Text(snapshot.data?.docs[index]['name']),

                        //Text('박철호 건겅해라'),
                      ],
                    ),
                  );
                });
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
