import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/controllers/question_controller1.dart';
import 'package:quiz/models/BooleanQues.dart';
import 'package:quiz/screens/quiz/components/question_card1.dart';
import 'package:quiz/screens/score/score_screen1.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class BoolBody extends StatelessWidget {
  const BoolBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController1 _questionController = Get.put(QuestionController1());
    return Stack(
      children: [
        WebsafeSvg.asset("assets/icons/undo.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: kSecondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard1(
                      question: _questionController.questions[index]),
                ),
              ),

              InkWell(
                onTap: () => Get.to(ScoreScreen1()),
                child: Container(
                  width: 200.0,
                  margin: EdgeInsets.only(left: 100.0, top: 0.0),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kDefaultPadding * 1), // 15
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Calculate Score",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.black, fontSize: 19.0),
                  ),
                ),
              ),
              //ScoreBtn(),
            ],
          ),
        )
      ],
    );
  }
}
