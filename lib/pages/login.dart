import 'package:flutter/material.dart';
import '../main.dart';
import 'register.dart';

class Login extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
              body: ListView(

                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget> [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Image.asset(
                          'assets/logo.png',
                          height: 100,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20,20,200,20),
                        child: Text(
                          "Welcome Back Explorer!",
                          style: TextStyle(
                              fontSize: 32
                          ),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(20,10,20,10),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      labelText: 'Email Address',
                                      hintText: 'Email Address',
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                                  ),

                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20,10,20,2),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: 'Password',
                                      hintText: 'Password',
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                                  ),

                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20,0,20,5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Forgot Password? ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Click here",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20,30,20,30),
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context){
                                              return FirstPage();
                                            }
                                        )
                                    );
                                  },
                                  child: Icon(Icons.arrow_forward_sharp, color: Colors.white),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    primary: Colors.deepPurple,
                                    onPrimary: Colors.purple,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20,0,20,5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Start Fresh Now? ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext context){
                                                  return Register();
                                                }
                                            )
                                        );
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}