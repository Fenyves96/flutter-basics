import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 6, 2, 12),
          Color.fromARGB(255, 63, 1, 1),
        ], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: StyledText("Hello World!"),
      ),
    );
  }
}
