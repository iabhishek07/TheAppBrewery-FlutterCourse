import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceyPage(),
    );
  }
}

class DiceyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff8c256),
        title: Text(
          'Dicey',
          style: GoogleFonts.poppins(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: DiceyScreen(),
    );
  }
}

class DiceyScreen extends StatefulWidget {
  @override
  _DiceyScreenState createState() => _DiceyScreenState();
}

class _DiceyScreenState extends State<DiceyScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void diceNumber() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 80.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: RaisedButton(
                onPressed: () {
                  diceNumber();
                },
                shape: StadiumBorder(),
                color: Color(0xfff8c256),
                splashColor: Colors.redAccent,
                child: Text('ROLL', style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500,),),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
