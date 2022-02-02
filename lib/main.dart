import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var infos = "Bienvenue level";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text(infos),
            ),
            body: ElevatedButton(
              style: ElevatedButton.styleFrom(onSurface: Colors.red),
              onPressed: null,
              child: Text('ElevatedButton with custom disabled colors'),
            )));
  }
}
