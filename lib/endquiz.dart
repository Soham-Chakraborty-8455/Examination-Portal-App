import 'package:flutter/material.dart';
import 'package:examination_portal/quizpage.dart';

class endquiz extends StatelessWidget {
  const endquiz({Key? key}) : super(key: key);

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
              child: EndQuiz(),
            ),
          ),
        ),
      ),
    );
  }
}

class EndQuiz extends StatefulWidget {
  const EndQuiz({Key? key}) : super(key: key);

  @override
  State<EndQuiz> createState() => _EndQuizState();
}

class _EndQuizState extends State<EndQuiz> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.00),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.00, bottom: 10.00),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Thanks for Appearning in ', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
                      Text('the Test!', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
                      SizedBox(height: 5.00,),
                      Text("UserName", style: TextStyle(color: Color(0xFF2741FF), fontSize: 16.00),)
                    ],
                  ),
                ),
                Divider(
                  color: Color(0xFF1029DE),
                  thickness: 1.00,
                  indent: 30.00,
                  endIndent: 30.00,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.00),
                  child: Text('Score'),
                ),
                Container(
                  width: 240.00,
                  margin: EdgeInsets.symmetric(horizontal: 30.00),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                    border: Border.all(color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3.0,
                        spreadRadius: 3,
                        offset: Offset(
                          3,
                          3,
                        ),
                      )
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14.00),
                  child: Center(child: Text('100/100', style: TextStyle(color: Color(0xFF2741FF), fontSize: 24, fontWeight: FontWeight.w700)),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Divider(
                    color: Color(0xFF1029DE),
                    thickness: 1.00,
                    indent: 30.00,
                    endIndent: 30.00,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.00, bottom: 10.00),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Solutions: ', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
