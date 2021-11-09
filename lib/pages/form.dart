import 'package:flutter/material.dart';

class Form_login extends StatefulWidget {
  myHomeState createState() => myHomeState();
}
class myHomeState extends State<Form_login>{

  final _formKey = GlobalKey<FormState>();
  var confirmPass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Register Account'),
      //automaticallyImplyLeading: false, //nonaktifkan back
    ),
         body: Column(
        children: <Widget> [
        Container(
          padding: EdgeInsets.all(15),
          child:Form(
            key: _formKey,
            child: Container(
              child: Column(
                children: [
                    Container(
                      padding: EdgeInsets.all(15), 
                ),
                Text(
                  'CREATE NEW ACCOUNT',
                  textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
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
                               
                        },
                        child: new Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 35.0,
                        
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
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
      );
  }
}