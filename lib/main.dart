import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Test',
      home:Scaffold(
        appBar: AppBar(
          title:Text("title text"),
        ),
        body: Center(
          child: Text("body text"),
        ),
      ),
    );
  }
}

