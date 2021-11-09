import 'package:flutter/material.dart';

import '../main.dart';

class Reg2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                  color: Colors.black
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20,10,200,0),
                  height: 100,
                  child: Text(
                    "Select Your Favorite Genres",
                    style: TextStyle(
                        fontSize: 24
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20,5,20,5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('Horror'),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('Music'),
                        ),
                      )

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20,5,20,5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('Action'),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('Drama'),
                        ),
                      )

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20,5,20,5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('Comedy'),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('War'),
                        ),
                      )

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20,10,200,0),
                  height: 100,
                  child: Text(
                    "Movie Language You Prefer",
                    style: TextStyle(
                        fontSize: 24
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20,5,20,5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('Bahasa'),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('English'),
                        ),
                      )

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20,5,20,5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('Japanese'),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                        ),
                        child: Center(
                          child: Text('Javanese'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context){
                                return FirstPage();
                              }
                          )
                      );
                    },
                    child: Icon(Icons.arrow_forward_sharp, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      primary: Colors.deepPurple,
                      onPrimary: Colors.purple,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

