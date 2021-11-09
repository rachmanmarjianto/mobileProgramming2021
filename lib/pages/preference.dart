import 'package:flutter/material.dart';
import 'login.dart';

class Preference extends StatefulWidget {
  PreferenceState createState() => PreferenceState();
}

class PreferenceState extends State<Preference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 56,
          margin: EdgeInsets.only(top: 20, bottom: 4),
          child: FlatButton(
            child: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Login();
                  },
                ),
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10, left: 30),
          child: Text(
            "Select Your\nFavorite Genres",
            style: TextStyle(fontSize: 20, color: Colors.black),
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
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'Horror',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'Music',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
          ],
        )),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'Action',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'Drama',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
          ],
        )),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'War',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'Crime',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
          ],
        )),
        Container(
          // SizedBox(height: 24),
          height: 56,
          margin: EdgeInsets.only(top: 20, bottom: 4, left: 30),
          child: Text(
            "Movie Language\nYou Prefer?",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'Indonesia',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'English',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
          ],
        )),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'Japanese',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
                  child: Text(
                    'Korean',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.amber;
                    return Colors.white;
                  }),
                ),
              ),
            ),
          ],
        )),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 20, bottom: 5),
          child: ElevatedButton(
            onPressed: () {},
            child: Container(
              //padding: EdgeInsets.all(20),
              child: new Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 15,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
            ),
          ),
        ),
        Container(
          child: Center(
              child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_forward),
            onPressed: () {},
          )),
        ),
      ],
    ));
  }
}
