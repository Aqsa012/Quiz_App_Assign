import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/controllers/question_controller1.dart';
import 'package:quiz/models/BooleanQues.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard1 extends StatelessWidget {
  const QuestionCard1({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final BoolQuestion question;

  @override
  Widget build(BuildContext context) {
    QuestionController1 _controller = Get.put(QuestionController1());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
