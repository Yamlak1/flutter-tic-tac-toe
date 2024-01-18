import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:game1/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Entry extends StatelessWidget {
  const Entry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Center(
            child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5, 90, 0, 0),
              child: Text(
                "Tic Tac Toe",
                style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: AvatarGlow(
                  duration: Duration(seconds: 2),
                  glowColor: Colors.white,
                  repeat: true,
                  startDelay: Duration(seconds: 1),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.none)),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[900],
                      radius: 80,
                      child: Container(
                        child: Image.asset(
                          'assets/img/XO.jpg',
                          color: Colors.white,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              // child: Padding(
              //   padding: EdgeInsets.only(left: 40, right: 40, bottom: 60),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.white,
                  child: Center(
                      child: Center(
                          child: Text(
                    'Play Game',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 3,
                      fontSize: 20,
                    ),
                  ))),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
