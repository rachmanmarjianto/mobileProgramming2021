import 'package:flutter/material.dart';
import '../main.dart';
import 'post_register.dart';

class Register extends StatelessWidget{
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
                    children: <Widget> [
                      Container(
                        child: Text(
                          "CREATE NEW ACCOUNT",
                          style: TextStyle(
                              fontSize: 24
                          ),
                        ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 20),
                      ),
                      Container(
                          child :CircleAvatar(
                            backgroundColor: Colors.purple,
                            child: Image.asset(
                              'assets/user.png',
                              height: 200,
                              color: Colors.yellow,
                            ),
                            radius: 75,
                          )
                      ),
                      Form(
                        key: _formKey,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(20,10,20,10),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    labelText: 'Full Name',
                                    hintText: 'Full Name',
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                  ),

                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20,10,20,10),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      labelText: 'Email',
                                      hintText: 'Email',
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                                  ),

                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20,10,20,10),
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
                                padding: EdgeInsets.fromLTRB(20,10,20,10),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: 'Confirm Password',
                                      hintText: 'Confirm Password',
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                                  ),

                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context){
                                              return Reg2();
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
                              )
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