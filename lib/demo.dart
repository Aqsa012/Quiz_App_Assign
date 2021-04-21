import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:quiz/constants.dart';
import 'package:quiz/navbar.dart';
import 'package:quiz/screens/quiz/quiz_screen.dart';
import 'package:quiz/screens/quiz/quiz_screen1.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:image_picker/image_picker.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _MyWelcomeScreen createState() => _MyWelcomeScreen();
}

class _MyWelcomeScreen extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white10,
      body: Stack(
        children: [
          //WebsafeSvg.asset("assets/icons/triangles.svg", fit: BoxFit.fill),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  Text(
                    "Let's Play Quiz,",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.indigo, fontWeight: FontWeight.bold),
                  ),
                  Text("Enter your informations below"),
                  Spacer(), // 1/6
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.tealAccent,
                      hintText: "Enter Your Name here...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  InkWell(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 1), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Lets Start Quiz with MCQ",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black, fontSize: 19.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () => Get.to(QuizScreen1()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 1), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Lets Start Quiz with True/False",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black, fontSize: 19.0),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), //
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
