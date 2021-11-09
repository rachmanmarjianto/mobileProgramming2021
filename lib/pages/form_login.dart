import 'package:flutter/material.dart';
import 'package:flutter_uts/pages/login.dart';
import 'package:flutter_uts/pages/film_genre.dart';

class Form_login extends StatefulWidget {
  formLoginState createState() => formLoginState();
}

class formLoginState extends State<Form_login> {
  final _formKey = GlobalKey<FormState>();
  var confirmPass;

  // String name = "";
  // String email = "";
  // String password = "";
  // String confirm_pass = "";
  // String text = "";
  // bool selected = false;

  // void onChanged(String val) {
  //   setState(() {
  //     this.name = val;
  //     this.email = val;
  //     this.password = val;
  //     this.confirm_pass = val;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              color: Colors.white,
              padding: EdgeInsets.all(15),
              child: Form(
                key: _formKey,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Login();
                              },
                            ));
                          },
                          child: new Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 15.0,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple.shade200,
                            onPrimary: Colors.deepPurple,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Create New Account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Divider(),
                      CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/Koya_BT21.png',
                            width: 150.0,
                            height: 150.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        radius: 50,
                      ),
                      Container(
                          height: 10,
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          labelText: 'Full Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Container(
                          height: 10,
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Container(
                          height: 10,
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Container(
                          height: 10,
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Container(
                          height: 10,
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing . . .')),
                              );
                            }
                            Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Film_genre();
                              },
                            ));
                          },
                          child: new Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18.0,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(23),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
      ),
    );
  }
}
