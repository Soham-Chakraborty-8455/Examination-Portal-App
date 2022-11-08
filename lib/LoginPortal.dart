import 'package:examination_portal/StudentLogin.dart';
import 'package:examination_portal/TeacherLogin.dart';
import 'package:flutter/material.dart';

class LoginPortal extends StatelessWidget {
  const LoginPortal({Key? key}) : super(key: key);

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
              child: LoginAs(),

            ),
          ),
        ),
      ),
    );
  }
}

class LoginAs extends StatefulWidget {
  const LoginAs({Key? key}) : super(key: key);

  @override
  State<LoginAs> createState() => _LoginAsState();
}

class _LoginAsState extends State<LoginAs> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 20.00,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.00, vertical: 20.00),
              child: Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                    side: BorderSide(color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image(image: AssetImage('images/IEM_New_Logo.webp'), height: 245.00, width: 293.00),
                ),
              ),
            ),
            Column(
              children: [
                Text("WELCOME TO", style: TextStyle(color: Color(0xFF1029DE), fontSize: 28.00, fontWeight: FontWeight.bold)),
                Text("IEM", style: TextStyle(color: Color(0xFF1029DE), fontSize: 28.00, fontWeight: FontWeight.bold)),
                Text("EXAMINATION", style: TextStyle(color: Color(0xFF1029DE), fontSize: 28.00, fontWeight: FontWeight.bold)),
                Text("PORTAL", style: TextStyle(color: Color(0xFF1029DE), fontSize: 28.00, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20.00,),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.00),
              child: Container(
                  width: 240.00,
                  margin: EdgeInsets.symmetric(horizontal: 30.00),
                  decoration: BoxDecoration(
                      color: Color(0xFF1029DE),
                      borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14.00),
                  child: GestureDetector(
                    child: Center(child: const Text('Login as Student', style: TextStyle(color: Colors.white, fontSize: 16.00))),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => StudentLogin()),
                      );
                    },
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.00, bottom: 20.00),
              child: Container(
                width: 240.00,
                  margin: EdgeInsets.symmetric(horizontal: 30.00),
                  decoration: BoxDecoration(
                      color: Color(0xFF1029DE),
                      borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14.00),
                  child: GestureDetector(
                    child: Center(child: const Text('Login as Teacher', style: TextStyle(color: Colors.white, fontSize: 16.00))),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TeacherLogin()),
                      );
                    },
                  )
              ),
            ),
            SizedBox(height: 15.00,),
          ],
        ),
      ),
    );
  }
}
