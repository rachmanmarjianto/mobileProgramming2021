import 'package:flutter/material.dart';
import 'preference.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  String emailvalid = "";
  String passvalid = "";

  void onChanged(String val) {
    setState(() {
      this.emailvalid = val;
      this.passvalid = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 3.0),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  SizedBox(
                    height: 70,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(top: 70, bottom: 40),
                    child: Text(
                      "Welcome Back,\nExplorer!",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Email Address",
                        hintText: "Email Address"),
                    onChanged: (String text) {
                      onChanged(text);
                    },
                  ),
                  SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Password",
                        hintText: "Password"),
                    onChanged: (String text) {
                      onChanged(text);
                    },
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Forgot Password? ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      Text(
                        "Get Now",
                        style: TextStyle(fontSize: 12, color: Colors.purple),
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 40, bottom: 30),
                      child: FloatingActionButton(
                          elevation: 0,
                          child: Icon(
                            Icons.arrow_forward,
                            color: this.emailvalid.length != 0 &&
                                    this.passvalid.length != 0
                                ? Colors.white
                                : Color(0xFFBEBEBE),
                          ),
                          backgroundColor: this.emailvalid.length != 0 &&
                                  this.passvalid.length != 0
                              ? Colors.deepPurple[700]
                              : Color(0xFFE4E4E4),
                          onPressed: () {
                            if (this.emailvalid.length != 0 &&
                                this.passvalid.length != 0) {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Preference();
                                },
                              ));
                            }
                          }),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Start Fresh Now? ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                      GestureDetector(
                          onTap: () {
                            // print("hallo");
                            Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return SignUp();
                              },
                            ));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.purple),
                          ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
