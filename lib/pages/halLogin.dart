import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'halRegis.dart';

class loginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var confirmPass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/bs.png',
                    height: 150,
                  ),
                  Container(
                    child: Text(
                      "WELCOME BACK",
                      style: TextStyle(fontSize: 20),
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  Form(
                    key: _formKey,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'Enter Email Here',
                                  icon: Icon(Icons.email),
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Email cannot be empty';
                                }
                                if (value.length > 50) {
                                  return 'Email is so long, max 50 characters';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter Password Here',
                                  icon: Icon(Icons.admin_panel_settings_sharp),
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                //validasi input
                                confirmPass = value;
                                if (value == null || value.isEmpty) {
                                  return 'Password cannot be empty';
                                }
                                if (value.length < 8) {
                                  return 'Password must be atleast 8 characters long';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // If the form is valid, display a snackbar. In the real world,
                                  // you'd often call a server or save the information in a database.
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Login...')),
                                  );
                                }
                              },
                              child: Icon(Icons.arrow_forward_sharp,
                                  color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  primary: Colors.red[900],
                                  onPrimary: Colors.blueGrey),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text("Don't have any account? "),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return registerPage();
                                    }));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Register',
                                      style: TextStyle(color: Colors.red[900]),
                                    ),
                                  ))
                            ],
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
    ));
  }
}
