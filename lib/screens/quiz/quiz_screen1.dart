import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/controllers/question_controller1.dart';
import 'package:quiz/screens/quiz/components/boolbody.dart';

import 'components/body.dart';

class QuizScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController1 _controller = Get.put(QuestionController1());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
              onPressed: _controller.nextQuestion,
              child: Text("Skip",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ))),
        ],
      ),
      body: BoolBody(),
    );
  }
}
