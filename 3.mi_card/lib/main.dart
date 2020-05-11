import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 55.0,
              backgroundImage: AssetImage('assets/abhi.jpeg'),
            ),
            SizedBox(height: 10.0),
            Text(
              'Abhishek Wagh',
              style: GoogleFonts.poppins(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(height: 5.0),
            Text(
              'FLUTTER DEVELOPER',
              style: GoogleFonts.poppins(
                letterSpacing: 3,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
              ),
            ),
            Divider(
              color: Colors.teal.shade200,
              thickness: 2,
              height: 20,
              indent: 150,
              endIndent: 150,
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.call,
                ),
                title: Text(
                  '+91- 7350452442',
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                ),
                title: Text(
                  'waghabhi21@gmail.com',
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.link,
                ),
                title: Text(
                  'https://www.iabhishek07.github.io',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
