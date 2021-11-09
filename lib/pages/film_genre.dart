import 'package:flutter/material.dart';
import 'package:flutter_uts/pages/form_login.dart';


class Film_genre extends StatefulWidget {
  filmGenreState createState() => filmGenreState();
}
class filmGenreState extends State<Film_genre>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //  SizedBox(
            //         height: 70,
            //       ),
            Container(
              alignment: Alignment.topLeft,
                   padding: EdgeInsets.only(top: 10),
                   child:  ElevatedButton(
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
                       child: new Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 15,
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple.shade200,
                       onPrimary: Colors.deepPurple,
                       shape: CircleBorder(),
                       padding: EdgeInsets.all(20),
                     ),
                   ),
                 ),
           Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Align(                      
                      alignment: Alignment.center,
                      child: Text(
                            "Select Your Favorite Genre!",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 20,
                              color: Colors.black
                            ),
                            
                          ),
                    ), 
                  ),
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                     width: 100,
                       height: 30,
                       child: Text(
                       'Action',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                       onPrimary: Colors.blue,
                     ),
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                      alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      width: 100,
                       height: 30,
                       child: Text(
                       'Comedy',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                        onPrimary: Colors.yellow,
                     ),
                   ),
                 ),
               ],
               )
           ),
            Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      width: 100,
                       height: 30,
                       child: Text(
                       'Horror',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                        onPrimary: Colors.grey.shade700,
                     ),
                   ),
                 ),
                 Container(
                    padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      width: 100,
                       height: 30,
                       child: Text(
                       'Fiction',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                        onPrimary: Colors.green,
                     ),
                   ),
                 ),
               ],
               )
           ),
            Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      width: 100,
                       height: 30,
                       child: Text(
                       'Romance',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                        onPrimary: Colors.redAccent.shade400,
                     ),
                   ),
                 ),
                 Container(
                    padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      width: 100,
                       height: 30,
                       child: Text(
                       'Animation',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                        onPrimary: Colors.purple.shade400,
                     ),
                   ),
                 ),
               ],
               )
           ),
           Container(
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
                 Container(
                    margin: EdgeInsets.only(top: 30, bottom: 5),
                    alignment: Alignment.center,
                    // child: Align(
                    //   alignment: Alignment.center,
                      child: Text(
                            "Select Your Movie Language!",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            
                          ),
                    // ), 
                  ),
                  Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      width: 100,
                       height: 30,
                       child: Text(
                       'English',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                        onPrimary: Colors.yellow,
                     ),
                   ),
                 ),
                 Container(
                    padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      width: 100,
                       height: 30,
                       child: Text(
                       'German',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                        onPrimary: Colors.yellow,
                     ),
                   ),
                 ),
               ],
               )
           ),
            Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      width: 100,
                       height: 30,
                       child: Text(
                       'Indonesian',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                        onPrimary: Colors.yellow,
                     ),
                   ),
                 ),
                 Container(
                    padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                      alignment: Alignment.center,
                      //  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      width: 100,
                       height: 30,
                       child: Text(
                       'Korean',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                        onPrimary: Colors.yellow,
                     ),
                   ),
                 ),
               ],
               )
           ),
            Container(
              alignment: Alignment.center,
                   padding: EdgeInsets.only(top:5, bottom: 5),
                   child:  ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       //padding: EdgeInsets.all(20),
                       child: new Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 18,
                     ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                       shape: CircleBorder(),
                       padding: EdgeInsets.all(23),
                     ),
                   ),
                 ),
               ],
               ),
           )
          ]
        )
      )
    );
  }
}
