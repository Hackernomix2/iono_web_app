import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iono_web_app/screens/chatbot_screen.dart';
import 'package:iono_web_app/screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iono App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
