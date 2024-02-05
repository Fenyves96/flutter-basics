import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Column(children: [
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 249, 75, 244),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black)),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ]),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    //Column wont be wider, than row with Expanded widget
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                                color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['user_answer'] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 162, 33, 179)),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(200, 91, 232, 242)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
