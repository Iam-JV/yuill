import 'package:flutter/material.dart';
import 'package:login2/Loginscreen.dart';
//import 'package:login2/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'loginpage',
      theme: ThemeData(
        primaryColor: Colors.indigoAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
