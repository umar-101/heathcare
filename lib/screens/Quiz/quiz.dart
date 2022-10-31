import 'package:flutter/material.dart';

// External Packages Import
import 'package:percent_indicator/percent_indicator.dart';
import 'package:routine_app/config/constants.dart';

import '../../widgets/Quiz/check_box_container.dart';
import '../../widgets/common/next_button.dart';

// ignore: prefer_typing_uninitialized_variables
var size, height, width;

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final bool _value = false;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/quizback.png',
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: Column(
            children: [
              Text('Sleep Questionnaire'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4),
              const SizedBox(height: 10),
              Container(
                width: 140,
                child: LinearPercentIndicator(
                  width: 140,
                  lineHeight: 6,
                  percent: 0.2,
                  backgroundColor: kBarBackColor,
                  progressColor: kBarFillColor,
                  barRadius: const Radius.circular(20),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'How often do you drink caffeine?',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      height: 1.4,
                    ),
              ),
              SizedBox(
                height: height * 0.14,
              ),
              CheckBoxContainer(value: _value),
              CheckBoxContainer(value: _value),
              CheckBoxContainer(value: !_value),
              SizedBox(
                height: height * 0.14,
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                        color: kBackgroundColor, shape: BoxShape.circle),
                    child: const Center(
                        child: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: kHeadingColor,
                    )),
                  ),
                  const SizedBox(width: 10),
                  const NextButton()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
