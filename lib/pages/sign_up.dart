import 'package:flutter/material.dart';

class sign_up extends StatelessWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(children: [
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 22, left: 10, right: 10),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
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
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
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
                                  image: AssetImage("assets/profil.png"))),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                TextField(
                  // controller: nameController,
                  decoration: InputDecoration(
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: "Full Name",
                      hintText: "Full Name"),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  // controller: emailController,
                  decoration: InputDecoration(
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: "Email",
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
                  height: 16,
                ),
                TextField(
                  // controller: retypePassswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: "Confirm Password",
                      hintText: "Confirm Password"),
                ),
                SizedBox(
                  height: 30,
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.purple,
                  elevation: 0,
                  onPressed: () {},
                )
              ]),
            )));
  }
}
