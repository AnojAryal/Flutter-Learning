import 'package:flutter/material.dart';
import 'package:test_project/answer_button.dart';
import 'package:test_project/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style:const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButtons(answerText: currentQuestion.answers[0], onTap: () {}),
          const SizedBox(height:10),
          AnswerButtons(answerText: currentQuestion.answers[1], onTap: () {}),
          const SizedBox(height:10), 
          AnswerButtons(answerText: currentQuestion.answers[2], onTap: () {}),
          const SizedBox(height:10), 
          AnswerButtons(answerText: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
