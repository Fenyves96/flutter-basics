import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
    ));
  }

  void onPressed() {
    print('asdasd');
  }
}
