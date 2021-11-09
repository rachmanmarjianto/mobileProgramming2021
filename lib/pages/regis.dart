import 'package:flutter/material.dart';
import 'login.dart';

class Regis extends StatelessWidget {
  String name = "";
  void onChanged(String val) {
    this.name = val;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: FlatButton(
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
                            width: 20,
                            child: Image.asset(
                              'assets/arrow.png',
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Text(
                          'CREATE NEW ACCOUNT',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      )
                    ]
                  )
                )
              ),
              Container(
                child: Center(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Image.asset(
                        'assets/user_pic.png',
                        height: 100,
                      ),
                    ),
                  ])
                )
              ),
              Container(
                child: Center(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Your Name',
                            labelText: 'Full Name',
                            border: OutlineInputBorder()),
                        onChanged: (String text) {
                          onChanged(text);
                        },
                      ),
                    )
                  ])
                )
              ),
              Container(
                child: Center(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'example@gmail.com',
                            labelText: 'Email',
                            border: OutlineInputBorder()),
                        onChanged: (String text) {
                          onChanged(text);
                        },
                      ),
                    )
                  ])
                )
              ),
              Container(
                child: Center(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Your Password',
                            labelText: 'Password',
                            border: OutlineInputBorder()),
                        onChanged: (String text) {
                          onChanged(text);
                        },
                      ),
                    )
                  ])
                )
              ),
              Container(
                child: Center(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Confirm Your Password',
                            labelText: 'Confirm Password',
                            border: OutlineInputBorder()),
                        onChanged: (String text) {
                          onChanged(text);
                        },
                      ),
                    )
                  ])
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: FloatingActionButton(
                  backgroundColor: Colors.purple,
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
                      'assets/arrow-back.png',
                      height: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
