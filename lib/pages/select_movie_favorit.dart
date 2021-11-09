import 'package:flutter/material.dart';
import 'package:uts_mobile/pages/login2.dart';

class select_movie_favorit extends StatefulWidget {
  filmGenreState createState() => filmGenreState();
}
class filmGenreState extends State<select_movie_favorit>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
            backgroundColor: Colors.deepPurple,
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Divider(),
                  Divider(),
                  Divider(),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 10),
                    child:  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return login2();
                            }));
                      },
                      child: Container(
                        //padding: EdgeInsets.all(20),
                        child: new Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Select Your, \nFavorite Genre!",
                      style: new TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                      textAlign: TextAlign.left,
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
                                  'Horor',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black
                                  ),
                                ),
                              ),

                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
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
                                  'Music',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white
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
                                  'Action',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white
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
                                  'Drama',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white
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
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white
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
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                  Divider(),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                              'Movie Language \nYou Prefer',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white
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
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white
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
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white
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
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        Divider(),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:5, bottom: 5),
                          child:  ElevatedButton(
                            onPressed: (){},
                            child: Container(
                              //padding: EdgeInsets.all(20),
                              child: new Icon(
                                Icons.arrow_forward,
                                color: Colors.purple,
                                size: 20,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(20),
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
