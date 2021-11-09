import 'package:flutter/material.dart';
import 'login.dart';

class uts extends StatelessWidget {
  String name = "";
  void onChanged(String val) {
    this.name = val;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Center(
                      child: Row(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
                  child: Image.asset(
                    'assets/arrow.png',
                    height: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    'CREATE NEW ACCOUNT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                )
              ]))),
              Container(
                  child: Center(
                      child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'assets/man.png',
                    height: 100,
                  ),
                ),
              ]))),
              Container(
                  child: Center(
                      child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Insert your full name',
                        labelText: 'Full Name',
                        border: OutlineInputBorder()),
                    onChanged: (String text) {
                      onChanged(text);
                    },
                  ),
                )
              ]))),
              Container(
                  child: Center(
                      child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Insert your email',
                        labelText: 'Email',
                        border: OutlineInputBorder()),
                    onChanged: (String text) {
                      onChanged(text);
                    },
                  ),
                )
              ]))),
              Container(
                  child: Center(
                      child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Insert your new password',
                        labelText: 'Password',
                        border: OutlineInputBorder()),
                    onChanged: (String text) {
                      onChanged(text);
                    },
                  ),
                )
              ]))),
              Container(
                  child: Center(
                      child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Confirm your password',
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder()),
                    onChanged: (String text) {
                      onChanged(text);
                    },
                  ),
                )
              ]))),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: FloatingActionButton(
                  backgroundColor: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Login();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/right-arrow.png',
                      height: 20,
                    ),
                  ),
                  //style: FloatingActionButton.styleFrom(primary: Colors.purple),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
