import 'package:flutter/material.dart';
import 'package:project_uts/pages2/form_login.dart';
import 'package:project_uts/pages2/login.dart';

class Signin extends StatefulWidget {
  signinState createState() => signinState();
}
class signinState extends State<Signin>{
  final _formKey = GlobalKey<FormState>();
  var confirmPass;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Form(
                child: Container(
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Container(
                         padding: EdgeInsets.only(bottom: 20),
                         alignment: Alignment.topLeft,
                          //margin: EdgeInsets.fromLTRB(10, 0, 0, 10),//left, top, right, bottom
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                    return Login();
                                    },
                                  )
                              );
                            },
                            child: new Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 15.0,
                        
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                        ),
                            )
                          
                       ),
                     Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                    AssetImage("assets/images/logo.png")
                              )    
                          )
                        ),
           Container(
                    margin: EdgeInsets.only(top: 70, bottom: 40),
                          child: Text(
                            "Welcome Back, \nExplorer!",
                            style: new TextStyle(
                              fontSize: 20,
                              color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        
                    ),
            Container(
                    height: 10,
                     margin: EdgeInsets.fromLTRB(10, 5, 10, 5),//left, top, right, bottom
                  ),

                TextField(
                    //enabled: !this.selected,
                    decoration: InputDecoration(
                    hintText: 'Email Address',
                    labelText: 'Email Adress',
                    //icon: Icon(Icons.lock),
                    border: OutlineInputBorder()
                    ),
                    //onChanged: (String text){ onChanged(text);},
                ),
                Container(
                    height: 10,
                     margin: EdgeInsets.fromLTRB(10, 5, 10, 5),//left, top, right, bottom
                  ),

                TextField(
                    //enabled: !this.selected,
                    decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    //icon: Icon(Icons.lock),
                    border: OutlineInputBorder()
                    ),
                    //onChanged: (String text){ onChanged(text);},
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                     GestureDetector(
                    onTap: (){
                      print("hallo");
                    },
                    child: Text(
                      "Change Now",
                      style: TextStyle(
                        color: Colors.purple
                      ),
                    ),
                  )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                       padding: EdgeInsets.only(top: 10),
                       child:  ElevatedButton(
                        onPressed:(){
                          if (_formKey.currentState!.validate()) {
                                  // If the form is valid, display a snackbar. In the real world,
                                  // you'd often call a server or save the information in a database.
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text('Processing Login')),
                                  );
                                }
                        },
                        child: new Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 15.0,
                        
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          onPrimary: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                        ),
                      ),
                     ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Start Fresh Now?",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                      ),
                     GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Form_login();
                           }));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.purple
                      ),
                    ),
                  )
                  ],
                ),
                    ],
                    ),
                    ),
                    ),
            )
        ],
        ),
      )
    );
  }
}