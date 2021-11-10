
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'halRegister.dart';
import 'halMovie.dart';

class loginPage extends StatelessWidget{
final _formKey = GlobalKey<FormState>();
var confirmPass;
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
                Column(
                  children: <Widget> [
                    Image.asset(
                      'assets/logo.png',
                      height: 50,
                    ),
                    Container(
                      child: Text(
                          "Welcome Back \nExploler!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 20, top: 50, left: 50),
                    ),
                    Form(
                      key: _formKey,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Masukkan Email',
                                    icon: Icon(Icons.email),
                                    border: OutlineInputBorder()
                                ),
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return 'Email tidak boleh kosong';
                                  }
                                  if(value.length > 50){
                                    return 'Email terlalu panjang, maksimal 50 karakter';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Masukkan password',
                                    icon: Icon(Icons.admin_panel_settings_sharp),
                                    border: OutlineInputBorder()
                                ),
                                validator: (value){ //validasi input
                                  confirmPass = value;
                                  if(value == null || value.isEmpty){
                                    return 'Password tidak boleh kosong';
                                  }
                                  if(value.length < 8){
                                    return 'Password harus minimal 8 karakter';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 50),
                                child: Text("Forgot Password? "),
                              ),
                              GestureDetector(
                                  onTap: (){
                                    print("Maaf halaman ini belum tersedia");
                                  },
                                  child: Container(
                                    child: Text(
                                      'Get Now',
                                      style: TextStyle(color: Colors.purple),
                                    ),
                                  ))
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) {
                                        return filmPage();
                                      }
                                    )
                                  );
                                },
                                child: Icon(Icons.arrow_forward_sharp,
                                  color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  primary: Colors.deepPurple,
                                  onPrimary: Colors.blueGrey
                                ),
                              ),
                            ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 20, left: 50),
                                child: Text("Start Fresh Now? "),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return registerPage();
                                    }));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(color: Colors.purple),
                                    ),
                                  ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}