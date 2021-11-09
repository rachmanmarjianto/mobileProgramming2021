import 'package:flutter/material.dart';

class Genres extends StatefulWidget {
  GenresState createState() => GenresState();
}
class GenresState extends State<Genres>{
 @override
  Widget build(BuildContext context) {
       return Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 22),
                    height: 56,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                      //         Navigator.push(
                      //         context, 
                      //         MaterialPageRoute(
                      //           builder: (context) => Login()
                      //         )
                      // );
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

Container(
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
                 Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Select Your Faour \nFavorite Genres',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                          fontSize: 22,
                           fontWeight: FontWeight.bold
                      )
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
                       padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      //   margin: EdgeInsets.only(right: 8),
                      //  padding: EdgeInsets.only(left: 16),
                      //  width:150,
                      //  height:50,
                       child: Text(
                       'Horor',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                    style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                           return Colors.amber;
                           return Colors.white;
                         }
                     )
                   ),
                   ),
                 ),


                 Container(
                   padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                     padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      // //  margin: EdgeInsets.only(right: 8),
                      // //  padding: EdgeInsets.only(left: 16),
                      //  width:150,
                      //  height:50,
                       child: Text(
                       'Music',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                           return Colors.amber;
                           return Colors.white;
                         }
                     )
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
                    // margin: EdgeInsets.only(right: 8),
                    //    padding: EdgeInsets.only(left: 16),
                      // width:150,
                      //  height:50,
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(  
                       padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                       child: Text(
                       'Action',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                   style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                           return Colors.amber;
                           return Colors.white;
                         }
                     )
                   ),
                   ),
                 ),

                 Container(
                    padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                      //   margin: EdgeInsets.only(right: 8),
                      //  padding: EdgeInsets.only(left: 16),
                      // width:150,
                      //  height:50,
                       child: Text(
                       'Drama',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                           return Colors.amber;
                           return Colors.white;
                         }
                     )
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
                       padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                       child: Text(
                       'War',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                           return Colors.amber;
                           return Colors.white;
                         }
                     )
                   ),
                   ),
                 ),

                 Container(
                    padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                       child: Text(
                       'Crime',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                           return Colors.amber;
                           return Colors.white;
                         }
                     )
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
                  margin: EdgeInsets.only(top:20, bottom:22),
                  child: Text(
                    'Movie Language \nYou Prefer',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                          fontSize: 22,
                           fontWeight: FontWeight.bold
                      )
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
                       padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                       child: Text(
                       'Indonesia',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                          return Colors.amber;
                           return Colors.white;
                         }
                     )
                   ),
                 ),
                 ),

                 Container(
                    padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                       child: Text(
                       'English',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                           return Colors.amber;
                           return Colors.white;
                         }
                     )
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
                       padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                       child: Text(
                       'Japanese',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                           return Colors.amber;
                           return Colors.white;
                         }
                     )
                   ),
                   ),
                 ),

                 Container(
                    padding: EdgeInsets.all(10),
                   child: ElevatedButton(
                     onPressed: (){},
                     child: Container(
                       padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                       child: Text(
                       'Korean',
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.black
                       ),
                     ),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith<Color>(
                         (Set<MaterialState> states){
                           if(states.contains(MaterialState.pressed))
                           return Colors.amber;
                           return Colors.white;
                         }
                     )
                   ),
                   ),
                 ),
               ],
               )
           ),

 Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 40, bottom: 30),
                      child: FloatingActionButton(
                          elevation: 0,
                          child: Icon(Icons.arrow_forward,),
                          backgroundColor: Colors.purple,
                          onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Genres();
                                },
                              ));
                            }
                          
                          ),
                    ),
                  ),
                  
            
                  
                ],
              ),
),
            ],
          ),
),
                ],
              ),
            ],
          ),
        ),
      
    );
  }
}