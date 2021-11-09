import 'package:flutter/material.dart';
import 'registrasi.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    SizedBox(
                      height: 70,
                      child: Image.asset("assets/logo.png"),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(top: 70, bottom: 40),
                      child: Text(
                        "Welcome Back,\nExplorer!",
                        style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Email Address",
                          hintText: "Email Address"),
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
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Forgot Password? ",
                          style: TextStyle(
                            color: Color(0xFFADADAD),
                            fontSize: 12, 
                            fontWeight: FontWeight.w400
                              ),
                        ),
                        Text(
                          "Get Now",
                          style:TextStyle(
                            color: Color(0xFF503E9D),
                            fontSize: 12, 
                            fontWeight: FontWeight.w400
                              ),
                        ),
                        
                      ],
                    ),
                    Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(top: 40, bottom: 30),
                        child: FloatingActionButton(
                          child: Icon(Icons.arrow_forward),
                          backgroundColor: Color(0xFF503E9D),
                          elevation:0,
                          onPressed: (){
                            // Navigator.push(
                            //   context, 
                            //   MaterialPageRoute(
                            //     builder: (context) => Preference()
                            //   )
                            // );
                          }
                        )
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Text(
                          "Start Fresh Now? ",
                          style: TextStyle(
                            color: Color(0xFFADADAD),
                            fontWeight: FontWeight.w400
                            ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => Registrasi()
                              )
                            );
                          },
                          child: Text(
                          "Sign Up",
                          style:TextStyle(
                            color: Color(0xFF503E9D),
                            fontWeight: FontWeight.w400
                            ),
                        )
                        ),
                        
                      ],
                    )
                  ],
                ),
              ],
            ),
          ));
  }
}


