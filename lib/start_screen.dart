import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/app-logo.png',
              width: 250,
            ),
          ),
          const SizedBox(height: 20),
           Text(
            'Flutter Basic Quiz',
            style: GoogleFonts.lato(
                color:const Color.fromARGB(255, 255, 255, 255), fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_forward_ios),
            label: const Text('Begin'),
          )
        ],
      ),
    );
  }
}
