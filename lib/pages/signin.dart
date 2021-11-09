import 'package:flutter/material.dart';
import 'package:flutter_uts/pages/form_login.dart';
import 'package:flutter_uts/pages/login.dart';

class SignIn extends StatefulWidget {
  signinState createState() => signinState();
}

class signinState extends State<SignIn>{
  final _formKey = GlobalKey<FormState>();
  var confirmPass;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Form(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 20),
                        alignment: Alignment.topLeft,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Login();
                                },
                              )
                            );
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
                        )  
                      ),
                      Container( 
                        child: new Image.asset (
                          'assets/logo.png',
                          width: 150,
                          height: 150,
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40, bottom: 40),
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Hello, Welcome Back!",
                          style: new TextStyle (
                            fontSize: 24,
                            color: Colors.black
                          ),
                        ),
                      ),

                      Container(
                        height: 10,
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          labelText: 'Email Adress',
                          border: OutlineInputBorder()
                        ),
                      ),
                      
                      Container(
                        height: 10,
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          border: OutlineInputBorder()
                        ),
                      ),

                      

                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              print("hallo");
                            },
                            child: Text(
                              "Change Now",
                              style: TextStyle(
                                color: Colors.purple
                              ),
                            ),
                          ),                
                        ],
                      ),
                      
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Text(
                            "Start Fresh Now?",
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Form_login();
                                }
                              ));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.purple
                              ),
                            ),
                          ), 
                        ],
                      ),
                      
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 10),
                        child:  ElevatedButton(
                          onPressed:(){
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                  Text('Processing . . .')
                                ),
                              );
                            }
                          },
                          
                          child: new Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18.0,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            onPrimary: Colors.grey,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(23),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}