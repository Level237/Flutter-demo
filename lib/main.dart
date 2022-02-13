import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String value = "bienvenue chez level";
  String value1 = "bienvenue chez Martin";

  void onclick1() {
    setState(() {
      value = "tutoriels pour débutants";
    });
  }

  void onclick2(String value2) {
    setState(() {
      value1 = value2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Raised Button'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => onclick1(),
                child:
                    Text('1 er bouton', style: TextStyle(color: Colors.green)),
              ),
              Text(
                value,
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
              Divider(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => onclick2('bojour a tous'),
                child: Text(value, style: TextStyle(color: Colors.green)),
              ),
              Text(
                value1,
                style: TextStyle(color: Colors.black, fontSize: 40),
              )
            ]));
  }
}
