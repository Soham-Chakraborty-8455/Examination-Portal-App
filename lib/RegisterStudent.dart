import 'package:flutter/material.dart';
import 'package:examination_portal/quizpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:examination_portal/authenticate.dart';
import 'StudentLogin.dart';

class RegisterStudent extends StatelessWidget {
  const RegisterStudent({Key? key}) : super(key: key);

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
              child: registerStudent(),
            ),
          ),
        ),
      ),
    );
  }
}

class registerStudent extends StatefulWidget {
  const registerStudent({Key? key}) : super(key: key);

  @override
  State<registerStudent> createState() => _registerStudentState();
}

class _registerStudentState extends State<registerStudent> {

  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController enrollmentcontroller=TextEditingController();
  TextEditingController namecontroller=TextEditingController();

  void SignUPUser() async{
    String res= await AuthMethods().SignUpUser(
        name: namecontroller.text,
        EnrollmentNumber: enrollmentcontroller.text,
        email: emailcontroller.text,
        password: passwordcontroller.text
    );
    if(res!="Success"){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(res),)
      );
    }
    else{
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => quizpage()),
      );
    }

  }

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
          Text("REGISTER YOURSELF", style: TextStyle(color: Colors.black, fontSize: 28.00, fontWeight: FontWeight.w700)),
          SizedBox(
            height:5.00,
          ),
          //name
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
                controller: namecontroller,
                showCursor: true,
                decoration: const InputDecoration(
                  errorBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left:20.00),
                  labelText: 'Name',
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
          //enrollment number
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
                controller: enrollmentcontroller,
                showCursor: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  errorBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left:20.00),
                  labelText: 'Enrollement Number',
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
          //emailid
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
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                showCursor: true,
                decoration: const InputDecoration(
                  errorBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left:20.00),
                  labelText: 'Email ID',
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
          //password
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
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    errorBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left:20.00),
                    labelText: 'Phone Number',
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
            child: GestureDetector(
              onTap: (){
                SignUPUser();
              },
              child: Container(
                width: 240.00,
                margin: EdgeInsets.symmetric(horizontal: 30.00),
                decoration: BoxDecoration(
                    color: Color(0xFF1029DE),
                    borderRadius: BorderRadius.all(Radius.circular(22))
                ),
                padding: const EdgeInsets.symmetric(vertical: 14.00),
                child: Center(child: const Text('Register', style: TextStyle(color: Colors.white, fontSize: 16.00))),
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
