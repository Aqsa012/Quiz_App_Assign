//import 'dart:html';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/navbar.dart';
import 'package:quiz/screens/quiz/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../demo.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 7),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/aqii.jpg'),
              radius: 70.0,
            ),
            Text(
              'Aqsa Tariq',
              style: TextStyle(
                fontFamily: 'Lobster',
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 10.0,
              width: 450.0,
              child: Divider(
                color: Colors.white,
                thickness: 1.0,
              ),
            ),
            Text(
              'FA17-BCS-012',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 5.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
