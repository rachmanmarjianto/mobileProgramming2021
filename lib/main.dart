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
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      home: SplashScreen(
        seconds: 8,
        navigateAfterSeconds: Login(),
        title: new Text(
          'CINEMA STAR',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.redAccent),
        ),
        image: Image.asset('assets/cinema.png'),
        photoSize: 100,
        backgroundColor: Colors.grey[850],
        loaderColor: Colors.red,
      ),
    );
  }
}
