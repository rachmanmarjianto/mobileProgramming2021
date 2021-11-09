
import 'package:flutter/material.dart';

void main() {
  runApp(Createe());
  //runApp(SignUp());
}

//CREATE NEW ACCOUNT
class Createe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: CreateNew(),
    );
  }
}

class CreateNew extends StatefulWidget {
  // MyHomePage({Key? key, required this.title}) : super(key: key);
  // final String title;
  @override
  _MyHomePageState1 createState() => _MyHomePageState1();
}

class _MyHomePageState1 extends State<CreateNew> {

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerConfirm = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Center(
        
        child: ListView(
          children: [
            Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[BackButton(),],
              ),
              ),
            Container(
               padding: EdgeInsets.only(left:8.0, right:8.0, top: 20, bottom: 30),
              child: Column(
                children: <Widget>[
                  Text("CREATE NEW ACCOUNT",
                    style: new TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left:8.0, right:8.0, top: 10),
                    child: CircleAvatar(
                      child: ClipOval(
                      child: Image.asset("assets/image/create.png", 
                      width: 250.0,
                      height: 250.0,
                      fit: BoxFit.cover,
                      ),
                      ),
                      radius: 70,
          ),
                  ),
                ],
              ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20, left: 20),
               child: Column(
                 children: <Widget>[
                   new TextField(
                     controller: controllerNama,
                     decoration: new InputDecoration(
                       hintText: "Full Name",
                       labelText: "Full Name",
                       border: new OutlineInputBorder(
                       borderRadius: new BorderRadius.circular(20.0))
                     ),
                   ),
                   ]
            ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20, left: 20, top: 15),
               child: Column(
                 children: <Widget>[
                   new TextField(
                     controller: controllerEmail,
                     decoration: new InputDecoration(
                       hintText: "Email",
                       labelText: "Email",
                       border: new OutlineInputBorder(
                       borderRadius: new BorderRadius.circular(20.0))
                     ),
                   ),
                   ]
            ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20, left: 20, top: 15),
               child: Column(
                 children: <Widget>[
                   new TextField(
                     controller: controllerPass,
                     decoration: new InputDecoration(
                       hintText: "Passwod",
                       labelText: "Passwod",
                       border: new OutlineInputBorder(
                       borderRadius: new BorderRadius.circular(20.0))
                     ),
                   ),
                   ]
            ),
            ),
            Container(
              padding: new EdgeInsets.only(right: 20, left: 20, top: 15),
               child: Column(
                 children: <Widget>[
                   new TextField(
                     controller: controllerConfirm,
                     decoration: new InputDecoration(
                       hintText: "Confirm Passwod",
                       labelText: "Confirm Passwod",
                       border: new OutlineInputBorder(
                       borderRadius: new BorderRadius.circular(20.0))
                     ),
                   ),
                   ]
            ),
            ),
            // Container(
            //     padding: EdgeInsets.only(top: 10),
            //     child: Row(
            //     //mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[],
            //   ),
            //   ),
          ],
        )
      ),
    );
  }
}

//SIGN UP 
 class SignUp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: '',
       // theme: ThemeData(
       //   primarySwatch: Colors.blue,
       // ),
       home: MyHomePage2(),
     );
   }
 }

 class MyHomePage2 extends StatefulWidget {
   // MyHomePage({Key? key, required this.title}) : super(key: key);
   // final String title;
   @override
   _MyHomePageState2 createState() => _MyHomePageState2();
 }

 class _MyHomePageState2 extends State<MyHomePage2> {

   TextEditingController controllerEmailAddress = new TextEditingController();
   TextEditingController controllerPass = new TextEditingController();

   @override
   Widget build(BuildContext context) {
    
     return Scaffold(
       // appBar: AppBar(
       //   // Here we take the value from the MyHomePage object that was created by
       //   // the App.build method, and use it to set our appbar title.
       //   title: Text(widget.title),
       // ),
       body: Center(
        
         child: ListView(
           children: [
            
             Container(
                padding: EdgeInsets.only(left:8.0, right:8.0, top: 50, bottom: 50),
               child: Column(
                 children: <Widget>[
                   Container(
                     child: 
                     Image.asset("assets/image/logo.png", 
                       width: 200.0,
                       height: 200.0,
                       fit: BoxFit.cover,
                       ),
                   )
                 ],
               ),
             ),
             Container(
               padding: new EdgeInsets.only(right: 20, left: 20),
               child: Text("Welcome Back Explorer !", style: new TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
             ),
             Container(
               padding: new EdgeInsets.only(right: 20, left: 20, top: 15),
                child: Column(
                  children: <Widget>[
                    new TextField(
                      controller: controllerEmailAddress,
                      decoration: new InputDecoration(
                        hintText: "Email Address",
                        labelText: "Email Address",
                        border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0))
                      ),
                    ),
                    ]
             ),
             ),
             Container(
               padding: new EdgeInsets.only(right: 20, left: 20, top: 15),
                child: Column(
                  children: <Widget>[
                    new TextField(
                      controller: controllerPass,
                      decoration: new InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0))
                      ),
                    ),
                    ]
             ),
             ),
             Container(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Forgot Password ? "),
                  GestureDetector(
                    onTap: (){
                      // print("hallo");
                    },
                    child: Text(
                      "Get Now",
                      style: TextStyle(
                          color: Colors.purple
                      ),
                    ),
                  )

                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[BackButton(),],
              ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Start Fresh Now ! "),
                  GestureDetector(
                    onTap: (){
                      // print("hallo");
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
         )
       ),
     );
   }
 }
