import 'package:flutter/material.dart';
import 'login.dart';

class NewAccount extends StatefulWidget {
  myHomeState createState() => myHomeState();
}

class myHomeState extends State<NewAccount> {
  final _formKey = GlobalKey<FormState>();
  var confirmPass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Account'),
        //automaticallyImplyLeading: false, //nonaktifkan back
      ),
      body: Center(
          child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(100.0, 20.0, 100.0, 20.0),
              child: Text(
                'CREATE NEW ACCOUNT',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://peopleshub.org/wp-content/uploads/2018/04/person-icon-white.png',
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              radius: 50,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Full Name',
                    labelText: 'Full Name',
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: FloatingActionButton(
                backgroundColor: Colors.purple,
                onPressed: () {
                  //onPressed();
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data Register')),
                    );
                  }
                },
                child: new Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
