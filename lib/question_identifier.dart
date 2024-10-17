import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumer = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 34, 255, 0)
            : const Color.fromARGB(255, 255, 0, 0),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumer.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
         ),
      ),
    );
  }
}
