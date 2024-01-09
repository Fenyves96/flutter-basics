import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        body: GradientContainer(colors: [
       Color.fromARGB(255, 6, 2, 12),
       Color.fromARGB(255, 63, 1, 1),
    ])),
  ));
}
