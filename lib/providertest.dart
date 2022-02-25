import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class Person {
  String name;
  int age;
  Person({required this.name, required this.age});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Person>(create: (_) => Person(name: '박철호', age: 65)),
        Provider<String>.value(value: "Park")
      ],
      child: MaterialApp(
        title: "Provider Test",
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final name = Provider.of<Person>(context).name;
    final age = Provider.of<Person>(context).age;
    String name1 = Provider.of<String>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Provider Test")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your Name is '$name'"),
            Text("Your 나이 is '$age'"),
            Text("Your balance is $name1"),
          ],
        ),
      ),
    );
  }
}
