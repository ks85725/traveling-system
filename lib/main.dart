import 'package:flutter/material.dart';
import 'package:test1/Home_screen.dart';

void main() => runApp(MyApp()); // class of the app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      debugShowCheckedModeBanner:false, //Main screen of app
      title: "Travel UI",
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.grey,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Home(),
    );
  }
}




