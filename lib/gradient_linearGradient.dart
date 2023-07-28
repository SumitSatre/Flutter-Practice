


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( FlutterApp() );
}

class FlutterApp extends StatelessWidget {  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  );
}
}

class MyHomePage extends StatefulWidget {  @override
State<StatefulWidget> createState() {
  return MyHomeState();
}
}

class MyHomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff4481eb),
              Color(0xbbe33434),
            ],
            begin: FractionalOffset(0.0 , 0.0),
            end: FractionalOffset(1.0 , 1.0),
            stops:[0.5 , 0.6],
          ),
        ),
      ),
    );
  }

}
// background-image: linear-gradient(to top, #a18cd1 0%, #fbc2eb 100%);