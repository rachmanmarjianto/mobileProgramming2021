import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget{
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{

  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),

      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
            ),
            Image.asset(
              'assets/images/logoUnair.png',
              height: 200,
              width: 200,
            ),
            Container(
              height: 10,
            ),
            Text("Belajar Flutter",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              ),
            )
          ],
        ),
      );
  }
}

class MyHomePage extends StatelessWidget {

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 150,
          ),
          Image.asset(
            'assets/images/logo.png',
            height: 200,
            width: 200,
          ),
          Container(
            height: 10,
          ),
          Text(
            'New Experience',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            height: 10,

          ),
          Container(
            margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
            child: Text(
              'Watch a new movie much easier than any before',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 75,
          ),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context){
                        return SignUp();
                      }
                  )
              );
            },
            color: Colors.purple,
            child: Text(
                'Get Started',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Already have an account? '),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context){
                            return SignIn();
                          }
                      )
                  );
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.purple
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 10,
              ),
              Icon(Icons.arrow_back, size: 30,),
              Container(
                width: 100,
              ),
              Container(
                width: 125,
                  child: Text(
                    'Create New Account',
                    style: TextStyle(
                        fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  )
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Icon(
                Icons.account_circle,
                color: Colors.yellow,
                size: 100,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(40, 80, 0, 0),
                child: Icon(
                  Icons.add_circle,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Full Name',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
            )
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              )
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              )
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              )
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 50,
            width: 50,
            child: RaisedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context){
                          return Choice();
                        }
                    )
                );
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              color: Colors.purple,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )
    );
  }
}

class SignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Image.asset(
              'assets/images/logo.png',
              height: 100,
              width: 100,
            ),
          ),
          Container(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 200,
            child: Text(
              'Welcome Back Explorer!',
              style: TextStyle(
                fontSize: 30
              ),
            ),
          ),
          Container(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email', 
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              )
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              )
          ),
          Row(
            children: <Widget>[
              Container(
                width: 10,
              ),
              Text('Forgot Password? '),
              Text(
                'Get Now',
                style: TextStyle(
                    color: Colors.purple
                ),
              )
            ],
          ),
          Container(
            height: 25,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 175,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 50,
                width: 50,
                child: RaisedButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                  color: Colors.grey,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 25,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 10,
              ),
              Text('Start From Now? '),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context){
                            return SignUp();
                          }
                      )
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.purple
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Choice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 10,
              ),
              Icon(
                Icons.arrow_back,
                size: 30,
              )
            ],
          ),
          Container(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 200,
            child: Text(
              'Select Your Favorite Genres',
              style: TextStyle(
                fontSize: 20
              ),
            ),
          ),
          Container(
            height: 25,
          ),
          Row(
            children: <Widget>[
              Spacer(),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all()
                ),
                width: 150,
                height: 50,
                child: Center(
                  child: Text(
                      'Horor',
                    style: TextStyle(
                      fontSize: 15
                    ),
                  ),
                )
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(),
                ),
                width: 150,
                height: 50,
                  child: Center(
                    child: Text(
                      'Music',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
              ),
              Spacer(),
            ],
          ),
          Container(
            height: 25,
          ),
          Row(
            children: <Widget>[
              Spacer(),
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all()
                  ),
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Action',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
              ),
              Spacer(),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(),
                  ),
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Drama',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
              ),
              Spacer(),
            ],
          ),
          Container(
            height: 25,
          ),
          Row(
            children: <Widget>[
              Spacer(),
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all()
                  ),
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'War',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
              ),
              Spacer(),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(),
                  ),
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Crime',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
              ),
              Spacer(),
            ],
          ),
          Container(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 200,
            child: Text(
              'Movie Language You Prefer?',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ),
          Container(
            height: 25,
          ),
          Row(
            children: <Widget>[
              Spacer(),
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all()
                  ),
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Bahasa',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
              ),
              Spacer(),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(),
                  ),
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'English',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
              ),
              Spacer(),
            ],
          ),
          Container(
            height: 25,
          ),
          Row(
            children: <Widget>[
              Spacer(),
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all()
                  ),
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Japanese',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
              ),
              Spacer(),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(),
                  ),
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Korean',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  )
              ),
              Spacer(),
            ],
          ),
          Container(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 175),
            height: 50,
            width: 50,
            child: RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              color: Colors.purple,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}