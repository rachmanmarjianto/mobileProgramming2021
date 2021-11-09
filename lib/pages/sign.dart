import 'package:flutter/material.dart';
import 'package:uts_017/pages/pilih.dart';

class Sign_form extends StatefulWidget {
  Sign createState() => Sign();
}

class Sign extends State<Sign_form>{
  String email="";
  String password="";
  String text="";
  bool selected = false;

  void onChanged(String val){
    setState((){
      this.email=val;
      this.password=val;
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                   SizedBox(
                    height: 90,
                  ),
                  Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                    AssetImage("assets/images/logo.png")
                              )    
                          )
                        ),
                  

                  Container(
                    margin: EdgeInsets.only(top: 70, bottom: 40),
                          child: Text(
                            "Welcome Back, \nExplorer!",
                            style: new TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                               fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        
                    ),


                  SizedBox(
                    height: 36,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Email Address",
                        hintText: "Email Adress"),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Password",
                        hintText: "Password"),
                  ),
                  
                  //*Forgot password
                  Container(
                padding: EdgeInsets.all(5),
                
              ),
              Row(
                children: <Widget>[
                  Text("Forgot Password?",
                  style: TextStyle(fontSize: 13,
                  color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: (){
                      //         Navigator.push(
                      //         context, 
                      //         MaterialPageRoute(
                      //           builder: (context) => Sign_form()
                      //         )
                      // );
                     
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

                  //*Panah
                  Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 40, bottom: 30),
                      child: FloatingActionButton(
                          elevation: 0,
                          child: Icon(Icons.arrow_forward,),
                          backgroundColor: Colors.grey,
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
                 
                  
            
                  Container(
                padding: EdgeInsets.all(5),
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Start Fresh Now?",
                  style: TextStyle(fontSize: 13,
                  color: Colors.grey),),
                  GestureDetector(
                    onTap: (){
                      //         Navigator.push(
                      //         context, 
                      //         MaterialPageRoute(
                      //           builder: (context) => Genres()
                      //         )
                      // );
                     
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
            ],
          ),
        ),
      
    );
  }
}


