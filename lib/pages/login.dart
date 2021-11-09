import 'package:flutter/material.dart';
import 'package:uts_mobile/pages/sign_up.dart';
import 'package:uts_mobile/pages/login2.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/film.png',
                height: 200,
              ),
              Container(
                padding: EdgeInsets.only(top: 70),
                child: Text(
                  "New Experience",
                  style: new TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:20),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  "Watch a new movie much easier than any before",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 80),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return sign_up();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return login2();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white70
                      ),
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