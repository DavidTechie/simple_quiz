import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['Correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [QuestionIdentifier(
        isCorrectAnswer: isCorrectAnswer,
        questionIndex: itemData['Question_index'] as int,
      ),
      const SizedBox(width:20),
      Expanded(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(
            itemData['Question'] as String,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize:16,
              fontWeight:FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(itemData['user_answer'] as String,
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
          Text(itemData['Correct_answer'] as String,
            style: const TextStyle(color: Color.fromARGB(255, 72, 255, 0),fontWeight: FontWeight.bold, ),),
        ],
    ),
    ),
    ]
    );

  }
}
