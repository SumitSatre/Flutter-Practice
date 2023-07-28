import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Animation_1.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp( FlutterApp() );
}

class FlutterApp extends StatefulWidget{
  @override
  State<FlutterApp> createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplashScreen() ,
    );
  }
}

class MySplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MySplashScreenState();
  }

}

class MySplashScreenState extends State<MySplashScreen>{

  static const String loginkey = "Login";

  func() async {
    var pref = await SharedPreferences.getInstance();
    var islogin = pref.getBool(loginkey);

    if(islogin != null){

      if(islogin) {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return MyHomePage();
        }));
      }

      else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return MyLoginPage();
        }));
      }

    }

    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return MyLoginPage();
      }));
    }
  }

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2) , () {
      func();
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Container(
          color: Colors.blue,
        )
    );
  }

}

class MyLoginPage extends StatefulWidget {

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  var emailController = TextEditingController();
  var passController = TextEditingController();

  late bool logincheck ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Shared preferences"))),

      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login" , style: TextStyle(fontSize: 30 , color: Colors.blue , fontWeight: FontWeight.bold),),

            Container(
              margin: EdgeInsets.only(bottom: 15 , top: 15),
              width: 300,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),

                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 15),
              width: 300,
              child: TextField(
                controller: passController,
                decoration: InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),

                    )
                ),
              ),
            ),

            ElevatedButton(
                onPressed: () async {

                  String email = emailController.text.toString();
                  String pass = passController.text.toString();

                  if(email != null && pass != null){

                    var pref = await SharedPreferences.getInstance();
                    pref.setBool(MySplashScreenState.loginkey , true);

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }));
                  }

                  else{
                    var pref = await SharedPreferences.getInstance();
                    pref.setBool(MySplashScreenState.loginkey , false);
                  }
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}