import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/aboutus.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/controllers/question_controller.dart';
import 'package:quiz/demo.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // WebsafeSvg.asset("assets/icons/flock.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 2),
              Text(
                "Result",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.black),
              ),
              Spacer(flex: 1),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  title: Text("Total Questions"),
                  trailing: Text("${_qnController.questions.length}"),
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  title: Text("Score"),
                  trailing: Text(
                    "${_qnController.numOfCorrectAns / _qnController.questions.length * 100}%",
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  title: Text("Correct Answers"),
                  trailing: Text(
                    "${_qnController.numOfCorrectAns}/${_qnController.questions.length}",
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16.0),
                  title: Text("Incorrect Answers"),
                  trailing: Text(
                    "${_qnController.questions.length - _qnController.numOfCorrectAns}/${_qnController.questions.length}",
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () => Get.to(WelcomeScreen()),
                child: Container(
                  width: 200.0,
                  margin: EdgeInsets.only(left: 15.0, top: 0.0),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kDefaultPadding * 1), // 15
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Go to Home",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.black, fontSize: 19.0),
                  ),
                ),
              ),
              Spacer(flex: 2),
            ],
          )
        ],
      ),
    );
  }
}
