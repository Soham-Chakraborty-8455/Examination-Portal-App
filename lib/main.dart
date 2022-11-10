import 'package:examination_portal/LoginPortal.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                child: HomePage(),
              ),
            ),
          ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
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
            Text("DEPARTMENT", style: TextStyle(color: Color(0xFF1029DE), fontSize: 28.00, fontWeight: FontWeight.bold)),
            Text("of", style: TextStyle(color: Color(0xFF1029DE), fontSize: 28.00, fontWeight: FontWeight.bold)),
            Text("INFORMATION", style: TextStyle(color: Color(0xFF1029DE), fontSize: 28.00, fontWeight: FontWeight.bold)),
            Text("TECHNOLOGY", style: TextStyle(color: Color(0xFF1029DE), fontSize: 28.00, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 10.00),
        Column(
          children: [
            Text('IT | CSE(IoTCSBT) | ', style: TextStyle(color: Colors.black, fontSize: 24.00, fontWeight: FontWeight.w700)),
            Text('CSE(IoT)', style: TextStyle(color: Colors.black, fontSize: 24.00, fontWeight: FontWeight.w700)),
          ],
        ),
        SizedBox(width: 10.00),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 50.00,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(backgroundColor: Color(0xFF2741FF),radius: 3.00),
                SizedBox(width: 3.00,),
                CircleAvatar(backgroundColor: Color(0xFF5C70FF),radius: 3.00),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right:8.00),
              height: 50.00,
              width: 50.00,
              child: FloatingActionButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginPortal()),
                  );
                },
                backgroundColor: Color(0xFF2741FF),
                child: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ],
    );
  }
}



