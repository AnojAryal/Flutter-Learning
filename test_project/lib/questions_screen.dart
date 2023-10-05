import 'package:flutter/material.dart';
import 'package:test_project/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'All the questions ?',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButtons(answerText: 'Answer Text 1', onTap: () {}),
          const SizedBox(height:10),
          AnswerButtons(answerText: 'Answer Text 1', onTap: () {}),
          const SizedBox(height:10),
          AnswerButtons(answerText: 'Answer Text 1', onTap: () {}),
        ],
      ),
    );
  }
}
