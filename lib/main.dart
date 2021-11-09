// @dart=2.9
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
        seconds: 8,
        navigateAfterSeconds: Login(),
        title: new Text(
          'Belajar Flutter',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
          ),
        ),
        image: Image.asset('assets/logoUnair.png'),
        photoSize: 100,
        backgroundColor: Colors.blue,
        loaderColor: Colors.white,
      ),
    );
  }
}
