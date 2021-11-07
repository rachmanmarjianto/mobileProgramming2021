import 'package:flutter/material.dart';
import 'package:project_uts/pages/sign_up.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 200,
            ),
            Container(
              padding: EdgeInsets.only(top: 70),
              child: Text(
                "New Experience",
                style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Watch a new movie much easier than any before",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 80),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sign_up()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    print("hallo");
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
