import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  loginState createState() => loginState();
}

class loginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 200,
              ),
              Container(
                padding: EdgeInsets.only(top: 70),
                child: Text(
                  "New Experience",
                  style:
                      new TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  "Watch a new movie much easier than any before",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 80),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(BuildContext context) {
                          return Form_login();
                        },
                        )
                        );
                  },

                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple
                  ),
                )
              ),
              Container(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      print("hallo");
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.purple),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Form_login extends StatefulWidget {
  myHomeState createState() => myHomeState();
}

class myHomeState extends State<Form_login> {
  String name = "";
  String email = "";
  String password = "";
  String confirm_pass = "";
  String text = "";
  bool selected = false;

  void onChanged(String val) {
    setState(() {
      this.name = val;
      this.email = val;
      this.password = val;
      this.confirm_pass = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register Account'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Create New Account',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Divider(),
            CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/logo.png',
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              radius: 50,
            ),
            Container(height: 10, margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
            TextField(
              enabled: !this.selected,
              decoration: InputDecoration(
                  hintText: 'Full Name',
                  labelText: 'Full Name',
                  border: OutlineInputBorder()),
              onChanged: (String text) {
                onChanged(text);
              },
            ),
            Container(
              height: 10,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            ),
            TextField(
              enabled: !this.selected,
              decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  border: OutlineInputBorder()),
              onChanged: (String text) {
                onChanged(text);
              },
            ),
            Container(
              height: 10,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            ),
            TextField(
              enabled: !this.selected,
              decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  border: OutlineInputBorder()),
              onChanged: (String text) {
                onChanged(text);
              },
            ),
            Container(
              height: 10,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            ),
            TextField(
              enabled: !this.selected,
              decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder()),
              onChanged: (String text) {
                onChanged(text);
              },
            ),
            Container(
              height: 10,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            ),
            FlatButton(
              onPressed: () {},
              child: new Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 35.0,
              ),
              shape: new CircleBorder(),
              color: Colors.purple,
              padding: EdgeInsets.all(15),
            ),
          ],
        )
        );
  }
}
