import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'halRegis.dart';
import 'halPilih.dart';
import 'PressLogin.dart';
import '/model/user.dart';

class loginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  final user = User(nama: '', email: '', password: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/bs.png',
              height: 100,
              alignment: Alignment.topLeft,
            ),
            padding: EdgeInsets.only(top: 30, bottom: 50, left: 30),
          ),
          Container(
            child: Text(
              'Welcome Back My Friends',
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.left,
            ),
            padding: EdgeInsets.only(left: 20),
          ),
          Container(
            child: Text(
              'Lets see who you are',
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.left,
            ),
            padding: EdgeInsets.only(left: 20),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  child: TextFormField(
                    controller: _email,
                    autofocus: true,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Email Address',
                      icon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email cannot be null';
                      }
                      if (!value.contains("@")) {
                        return 'Email use @';
                      }
                      if (value.length > 50) {
                        return 'Email is too long, max 50 characters';
                      }
                    },
                  ),
                  padding:
                      EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 10),
                ),
                Container(
                  child: TextFormField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Entry Password',
                      icon: Icon(Icons.admin_panel_settings_sharp),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cannot be null';
                      }
                      if (value.length < 8) {
                        return 'Password must be atleast 8 characters long';
                      }
                    },
                  ),
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        user.email = _email.text;
                        user.password = _password.text;
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return PressLogin(user: user);
                        }));
                        /*
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Login')),
                          );
                           */
                      }
                    },
                    child: Icon(Icons.arrow_forward_sharp, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        primary: Colors.red[900],
                        onPrimary: Colors.red[100]),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 20,
                ),
                child: Text(
                  'Are you New Member?',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return registerPage();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 5),
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 15, color: Colors.red[900]),
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
