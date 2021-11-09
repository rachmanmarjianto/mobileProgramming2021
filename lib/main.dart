import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'pages/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tikcekt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
        seconds: 8,
        navigateAfterSeconds: Landing(),
        title: new Text(
          'MyTicket',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.deepPurple
          ),
        ),
        image: Image.asset('assets/logo.png'),
        photoSize: 100,
        backgroundColor: Colors.amber,
        loaderColor: Colors.white,
      ),
    );
  }
}
