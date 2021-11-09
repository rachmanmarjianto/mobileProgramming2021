import 'package:flutter/material.dart';
import 'package:uts_017/pages/sign.dart';
import 'package:uts_017/pages/login.dart';
import 'package:uts_017/pages/pilih.dart';

class Login2 extends StatefulWidget {
  Register createState() => Register();
}

class Register extends State<Login2>{
  String name="";
  String email="";
  String password="";
  String confirm="";
  String text="";
  bool selected = false;

  void onChanged(String val){
    setState((){
      this.name=val;
      this.email=val;
      this.password=val;
      this.confirm=val;
    });
  }

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
                              Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => Login()
                              )
                      );
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Create New\nAccount",
                            style: new TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                               fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 104,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                    AssetImage("assets/images/user.png")
                              )    
                          )
                        )
                      ]
                    ),
                  ),

                  SizedBox(
                    height: 36,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Full Name",
                        hintText: "Full Name"),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Email",
                        hintText: "Email"),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Password",
                        hintText: "Password"),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Confirm Password",
                        hintText: "Confirm Password"),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.arrow_forward),
                    backgroundColor: Colors.purple,
                    elevation:0,
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => Genres()
                        )
                      );
                    }
                    )
            
                  
                ],
              )
            ],
          ),
        ),
      
    );
  }
}

//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       title: Text(''),
//     ),
//          body: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget> [

//           Text( 
//             'Create New Account',
//             textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontFamily: 'Roboto',
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 25
//                   ),
//           ),
//          Divider(),
//           CircleAvatar(
//             child: ClipOval(
//               child: Image.network(
//                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq8bgwOHQ7glT0h5CwtPvUKyF5en_-iUnrsRg14ua6XyP-sljgIGaC67pl-9VEKirIedI&usqp=CAU',
//                 width: 150.0,
//                 height:150.0,
//                 fit: BoxFit.cover,
//                 ),
//                 ),
//                 radius: 50,
//           ),

//            //*FullName
//         Container(
//                     height: 10,
//                     padding: const EdgeInsets.only(top:120, left: 24, right: 24),
//                      ),
//                 TextField(
//                     enabled: !this.selected,
//                     decoration: InputDecoration(
//                     hintText: 'Full Name',
//                     labelText: 'Full Name',
//                     border: OutlineInputBorder(
//                       borderRadius:  BorderRadius.circular(10),
//                       borderSide: BorderSide(),),
//                     ),
//                     onChanged: (String text){ onChanged(text);},
//                 ),


//                    //*Email
//                  Container(
//                     height: 10,
//                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),),
//                 TextField(
//                     enabled: !this.selected,
//                     decoration: InputDecoration(
//                     hintText: 'Email',
//                     labelText: 'Email',
//                     //icon: Icon(Icons.email),
//                     border: OutlineInputBorder()
//                     ),
//                     onChanged: (String text){ onChanged(text);},
//                 ),


//                    //*Password
//                  Container(
//                     height: 10,
//                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),//left, top, right, bottom
//                   ),
//                 TextField(
//                     enabled: !this.selected,
//                     decoration: InputDecoration(
//                     hintText: 'Password',
//                     labelText: 'Password',
//                     border: OutlineInputBorder()
//                     ),
//                     onChanged: (String text){ onChanged(text);},
//                 ),


//                    //*Confirm Password
//                  Container(
//                     height: 10,
//                     margin: EdgeInsets.fromLTRB(10, 5, 10, 5),),

//                     TextField(
//                     enabled: !this.selected,
//                     decoration: InputDecoration(
//                     hintText: 'Confirm Password',
//                     labelText: 'Confirm Password',
//                     border: OutlineInputBorder()
//                     ),
//                     onChanged: (String text){ onChanged(text);},
//                      ),

//                       //*Button
//                  Container(
//                     margin: EdgeInsets.fromLTRB(10, 20, 10, 5),),
//                 FlatButton(
//                   onPressed:(){
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (BuildContext context) {
//                         return Sign_form();
//                         },
//                       )
//                     );
//                   },
//                   child: new Icon(
//                     Icons.arrow_forward,
//                     color: Colors.white,
//                     size: 35.0,
                   
//                   ),
//                   shape: new CircleBorder(),
//                   color: Colors.purple,
//                   padding : EdgeInsets.all(15),
//                 ),
                
//         ],
//       ),
//       );
//   }
// }