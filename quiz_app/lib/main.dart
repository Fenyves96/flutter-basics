import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: QuizContainer(),
    ),
  ));
}

class QuizContainer extends StatelessWidget {
  const QuizContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 94, 4, 110),
            Color.fromARGB(255, 44, 1, 50)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Learn Flutter the fun way!', style: TextStyle(color: Colors.white, fontSize: 20),),
            TextButton(onPressed: onPressed, child: const Text('Start Quiz', style: TextStyle(color: Colors.white, fontSize: 15),))
          ],
        )));
  }

  void onPressed() {
    print('asd');
  }
}
