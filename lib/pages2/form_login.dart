import 'package:flutter/material.dart';
import 'package:project_uts/pages2/film_genre.dart';
import 'package:project_uts/pages2/login.dart';

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
//         primarySwatch: Colors.purple,
//       ),
//       home: MyHome(),
//     );
//   }
// }

class Form_login extends StatefulWidget {
  formLoginState createState() => formLoginState();
}
class formLoginState extends State<Form_login>{
  final _formKey = GlobalKey<FormState>();
  var confirmPass;
  @override
  Widget build(BuildContext context) {
return MaterialApp(
     home:  Scaffold(
         body: Column(
        children: <Widget> [
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(15),
          child:Form(
            key: _formKey,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     Container(
                       alignment: Alignment.topLeft,
                       padding: EdgeInsets.only(top: 10),
                       child:  ElevatedButton(
                        onPressed:(){
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
                      ),
                     ),
                     Container(
                       alignment: Alignment.topCenter,
                       margin: EdgeInsets.only(top: 10),
                        child: Text(
                        'CREATE NEW ACCOUNT',
                        textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25
                              ),
                      ),
                     ),
              Divider(),
                CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      'https://peopleshub.org/wp-content/uploads/2018/04/person-icon-white.png',
                      //'https://cdn.icon-icons.com/icons2/1674/PNG/512/person_110935.png',
                      //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq8bgwOHQ7glT0h5CwtPvUKyF5en_-iUnrsRg14ua6XyP-sljgIGaC67pl-9VEKirIedI&usqp=CAU',
                      width: 150.0,
                      height:150.0,
                      fit: BoxFit.cover,
                      ),
                      ),
                      radius: 50,
                ),
              Container(
                height: 10,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),//left, top, right, bottom
                  // child: Row(
                  //   children: [
                  //     TextField(
                  //         //enabled: !this.selected,
                  //         decoration: InputDecoration(
                  //         hintText: 'Masukan Nama',
                  //         labelText: 'Nama',
                  //         //icon: Icon(Icons.person),
                  //         border: OutlineInputBorder()
                  //         ),
                  //         onChanged: (String text){ onChanged(text);},
                  //     ),
                  //   ],
                  //   ),
                ),
                      TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                          hintText: 'Full Name',
                          labelText: 'Full Name',
                          //icon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                          ),
                      ),

                      Container(
                          height: 10,
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),//left, top, right, bottom
                        ),

                      TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          //icon: Icon(Icons.email),
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

                      Container(
                          height: 10,
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),//left, top, right, bottom
                            
                        ),

                          TextField(
                          //enabled: !this.selected,
                          decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                          //icon: Icon(Icons.lock),
                          border: OutlineInputBorder()
                          ),
                          //onChanged: (String text){ onChanged(text);},
                      ),
                      Container(
                          //height: 10,
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 5),//left, top, right, bottom
                            
                        ),
                     Container(
                       padding: EdgeInsets.only(top: 15),
                       child:  ElevatedButton(
                        onPressed:(){
                          if (_formKey.currentState!.validate()) {
                                  // If the form is valid, display a snackbar. In the real world,
                                  // you'd often call a server or save the information in a database.
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text('Processing Data Register')),
                                  );
                                }
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                    return Film_genre();
                                    },
                                  )
                    );
                        },
                        child: new Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18.0,
                        
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(23),
                        ),
                      ),
                     )
            ],
            ),
            ),
            )
        )
        ],
      ),
      )
);
  }
}


