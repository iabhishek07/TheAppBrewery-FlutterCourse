import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        leading: Icon(Icons.account_balance),
        backgroundColor: Color(0xFF004D5B),
        title: Text(
          'I Am Poor',
        ),
      ),
      body: Center(
        child: Image.asset(
          'images/coal.png',
        ),
      ),
    );
  }
}
