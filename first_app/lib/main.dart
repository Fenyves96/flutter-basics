import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromARGB(255, 168, 155, 190), Colors.black]),
        ),
        child: const Center(
          child: Text('Hello World!'),
        ),
      ),
    ),
  ));
}
