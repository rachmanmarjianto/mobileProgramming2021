import 'package:flutter/material.dart';
import 'package:uts_mobile/pages/sign_up.dart';

class login2 extends StatelessWidget {
  const login2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(children: [
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 22, left: 10, right: 10),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Container(
                          child: Stack(
                            children: <Widget>[
                                Image.asset(
                                  'assets/roll.png',
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    "Welcome\nBack Explorer",
                    maxLines: 20,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.normal, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),

                SizedBox(
                  height: 16,
                ),
                TextField(
                  // controller: emailController,
                  decoration: InputDecoration(
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: "Email Address",
                      hintText: "Email"),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  // controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: "Password",
                      hintText: "Password"),
                ),
                SizedBox(
                  height: 30,
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.purple,
                  ),
                  backgroundColor: Colors.white,
                  elevation: 0,
                  onPressed: () {},
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Start Fresh Now, ",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context){
                              return sign_up();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white70
                        ),
                      ),
                    )

                  ],
                ),
              ]),
            )
        )
    );
  }
}
