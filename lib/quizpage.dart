import 'package:examination_portal/endquiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class quizpage extends StatelessWidget {
  const quizpage({Key? key}) : super(key: key);

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
              child: QuizPage(),
            ),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
  @override
  void onEnd() {
    print('onEnd');
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.00),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Welcome,', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
              Text('Username'),
            ],
          ),
        ),
        Column(
          children: [
            Text('LIVE EXAMINATION NAME', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
            Divider(
              color: Color(0xFF1029DE),
              thickness: 1.00,
              indent: 30.00,
              endIndent: 30.00,
            ),
            //TODO: ADD A TIMER
            Padding(
              padding: const EdgeInsets.all(10.00),
              child: Text('Time Remaining'),
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
              child: Center(
                child: CountdownTimer(
                  endTime: endTime,
                  widgetBuilder: (_, time) {
                    if (time == null) {
                      return Text('Game over');
                    }
                    return Text(
                      '${time.hours}: ${time.min}: ${time.sec}',
                      style: TextStyle(color: Color(0xFF2741FF),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    );
                  }
                ),
              ),
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.00),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.00),
                child: Text('Q. Questions', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.00),
                child: Container(
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
                  padding: const EdgeInsets.symmetric(vertical: 10.00, horizontal: 30.00),
                  child: const Text('Option 1', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.00),
                child: Container(
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
                  padding: const EdgeInsets.symmetric(vertical: 10.00, horizontal: 30.00),
                  child: const Text('Option 2', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.00),
                child: Container(
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
                  padding: const EdgeInsets.symmetric(vertical: 10.00, horizontal: 30.00),
                  child: const Text('Option 3', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.00),
                child: Container(
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
                  padding: const EdgeInsets.symmetric(vertical: 10.00, horizontal: 30.00),
                  child: const Text('Option 4', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),

                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 43.00,
                width: 43.00,
                child: FloatingActionButton(
                    onPressed: (){},
                  backgroundColor: Color(0xFF2741FF),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => endquiz()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.00),
                  decoration: BoxDecoration(
                    color: Color(0xFF2741FF),
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10.00, horizontal: 30.00),
                  child: Center(child: const Text('Submit', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700)),),
                ),
              ),
              Container(
                height: 43.00,
                width: 43.00,
                child: FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Color(0xFF2741FF),
                  child: Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
