import 'package:flutter/material.dart';
import 'halRegis.dart';
import 'halLogin.dart';

class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/bs.png',
                height: 150,
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'BLACKSTEEL CINEMAS',
                  style:
                      new TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Get An Amazing Cinema Experience With The Latest Movies',
                  style: new TextStyle(fontSize: 20, color: Colors.red[900]),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 100),
                child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[900]),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return registerPage();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Register Now',
                        style: new TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("Do you already have an account? "),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return loginPage();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.red[900]),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
