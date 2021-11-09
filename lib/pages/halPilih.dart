import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'halRegis.dart';

class pilihPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var confirmPass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Select Your Favorite Genres",
                      style: TextStyle(fontSize: 15),
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(),
                    ],
                  ))
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
