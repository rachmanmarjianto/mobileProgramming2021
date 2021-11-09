import 'package:flutter/material.dart';
import 'login.dart';
import 'preference.dart';

class SignUp extends StatefulWidget {
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  String name = "";
  String email = "";
  String password = "";
  String confirmpass = "";
  String text = "";
  bool selected = false;

  void onChanged(String val) {
    setState(() {
      this.name = val;
      this.email = val;
      this.password = val;
      this.confirmpass = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 3.0),
            child: ListView(children: <Widget>[
              Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 22),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Login();
                              },
                            ));
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Create New\nAccount",
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 104,
                  width: 90,
                  child: Stack(
                    children: <Widget>[
                      Divider(),
                      CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/profile.png',
                            width: 150.0,
                            height: 150.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        radius: 50,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                TextField(
                  // controller: nameController,
                  enabled: !this.selected,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Full Name",
                      hintText: "Full Name"),
                  onChanged: (String text) {
                    onChanged(text);
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  // controller: emailController,
                  enabled: !this.selected,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Email",
                      hintText: "Email"),
                  onChanged: (String text) {
                    onChanged(text);
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  // controller: passwordController,
                  enabled: !this.selected,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password",
                      hintText: "Password"),
                  onChanged: (String text) {
                    onChanged(text);
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  // controller: retypePassswordController,
                  enabled: !this.selected,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Confirm Password",
                      hintText: "Confirm Password"),
                  onChanged: (String text) {
                    onChanged(text);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                FloatingActionButton(
                    child: Icon(Icons.arrow_forward),
                    backgroundColor: Colors.deepPurple[700],
                    elevation: 0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Preference();
                      }));
                    })
              ])
            ])));
  }
}
