import 'package:darts/x01.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String greetingMessage() {
    var timeNow = DateTime.now().hour;
    String? time;
    if (timeNow <= 12) {
      time = 'Good Morning';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      time = 'Good Afternoon';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      time = 'Good Evening';
    } else {
      time = 'Good Night';
    }
    return time;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              child: Text(
                "⦿ Hello, ${greetingMessage()}",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff000742),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              child: Image.asset(
                'images/69717.png',
                color: Color(0xff000742),
              ),
            ),
            Center(child: Text("Darts Scoring",style: TextStyle(color: Color(0xff000742),fontSize: 25,fontWeight: FontWeight.bold,),),),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return x01();
                },));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                decoration: ShapeDecoration(
                    color: Color(0xff000742),
                    shadows: [
                      BoxShadow(
                          blurRadius: 7,
                          spreadRadius: 1,
                          offset: Offset(0, 3),
                          color: Colors.black.withOpacity(0.4))
                    ],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text("X01",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),

            Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: ShapeDecoration(
                  color: Color(0xff000742),
                  shadows: [
                    BoxShadow(
                        blurRadius: 7,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                        color: Colors.black.withOpacity(0.4))
                  ],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text("Cricket",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),

            Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: ShapeDecoration(
                  color: Color(0xff000742),
                  shadows: [
                    BoxShadow(
                        blurRadius: 7,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                        color: Colors.black.withOpacity(0.4))
                  ],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text("Around the clock",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),

            Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: ShapeDecoration(
                  color: Color(0xff000742),
                  shadows: [
                    BoxShadow(
                        blurRadius: 7,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                        color: Colors.black.withOpacity(0.4))
                  ],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text("Practice",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),

            Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: ShapeDecoration(
                  color: Color(0xff000742),
                  shadows: [
                    BoxShadow(
                        blurRadius: 7,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                        color: Colors.black.withOpacity(0.4))
                  ],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text("Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
