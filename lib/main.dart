import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'pages/halAwalan.dart';

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
        seconds: 5,
        navigateAfterSeconds: firstPage(),
        title: new Text(
            'Selamat Datang di Aplikasi Channel',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.white
          ),
        ),
        image: Image.asset('assets/logoSplash.png'),
        photoSize: 125,
        backgroundColor: Colors.black,
        loaderColor: Colors.white,
      ),
    );
  }
}

