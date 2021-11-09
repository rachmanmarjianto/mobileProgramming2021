import 'package:flutter/material.dart';
import 'package:project_uts/pages2/form_login.dart';
import 'package:project_uts/pages2/signin.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.puprle,
//       ),
//       home: Login(),
//     );
//   }
// }

class Login extends StatefulWidget {
  loginState createState() => loginState();
}
class loginState extends State<Login>{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
           
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 200,
              ),
              Container(
                padding: EdgeInsets.only(top: 70),
                child: Text(
                  "New Experience",
                  style: new TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
               padding: EdgeInsets.only(top: 80),
               width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  "Watch a new movie much easier than any before",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
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
                        builder: (BuildContext context) {
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
                        fontSize: 20,
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
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Signin();
                           }
                           )
                           );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.purple
                      ),
                    ),
                  )
                ],
              )
            ],
            )
          ),
        ),
    );
  }
}

