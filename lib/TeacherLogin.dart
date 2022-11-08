import 'package:examination_portal/questionset.dart';
import 'package:flutter/material.dart';

class TeacherLogin extends StatelessWidget {
  const TeacherLogin({Key? key}) : super(key: key);

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
              child: LoginTeacher(),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginTeacher extends StatefulWidget {
  const LoginTeacher({Key? key}) : super(key: key);

  @override
  State<LoginTeacher> createState() => _LoginTeacherState();
}

class _LoginTeacherState extends State<LoginTeacher> {
  TextEditingController tidcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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
              Text("LOGIN AS A", style: TextStyle(color: Colors.black, fontSize: 28.00, fontWeight: FontWeight.w700)),
              Text("TEACHER", style: TextStyle(color: Colors.black, fontSize: 28.00, fontWeight: FontWeight.w700)),
            ],
          ),
          SizedBox(
            height:5.00,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.00),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.00),
              decoration: BoxDecoration(
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.00)
              ),
              child: TextField(
                controller: tidcontroller,
                showCursor: true,
                decoration: const InputDecoration(
                  errorBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left:20.00),
                  labelText: 'Teacher ID Number',
                  labelStyle: TextStyle(
                    color: Color(0xFF747677),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height:5.00,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.00),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.00),
              decoration: BoxDecoration(
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.00)
              ),
              child: TextField(
                controller: passwordcontroller,
                showCursor: true,
                obscureText: true,
                decoration: const InputDecoration(
                    errorBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left:20.00),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Color(0xFF747677),
                    )
                ),
              ),
            ),
          ),
          SizedBox(
            height:10.00,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.00),
            child: Container(
              width: 240.00,
              margin: EdgeInsets.symmetric(horizontal: 30.00),
              decoration: BoxDecoration(
                  color: Color(0xFF1029DE),
                  borderRadius: BorderRadius.all(Radius.circular(22))
              ),
              padding: const EdgeInsets.symmetric(vertical: 14.00),
              child: GestureDetector(
                child: Center(child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 16.00))),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => questionset()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.00),
            child: GestureDetector(

              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TeacherLogin()),
                );
              },
              child: Text(
                'Register as Teacher',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2741FF),
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w700,
                  //TODO: Create new account OnPressed function call
                ),
              ),
            ),
          ),
          SizedBox(
            height:5.00,
          ),
        ],
      ),
    );
  }
}
