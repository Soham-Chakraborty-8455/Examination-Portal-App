import 'package:flutter/material.dart';

class questionset extends StatelessWidget {
  const questionset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(22.00))
              ),
              child: QuestionSet(),
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionSet extends StatefulWidget {
  const QuestionSet({Key? key}) : super(key: key);

  @override
  State<QuestionSet> createState() => _QuestionSetState();
}

class _QuestionSetState extends State<QuestionSet> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
