import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Expanded(
                //Column wont be wider, than row with Expanded widget
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(height: 5),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],
                ),
              )
            ],
          );
        },
      ).toList(),
    );
  }
}