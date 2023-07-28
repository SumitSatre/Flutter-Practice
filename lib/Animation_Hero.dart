import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/buttons.dart';
import 'package:my_app/callbackfunction.dart';

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
  bool flag = true;

  void reload(){
    setState(() {
      flag = false;
    });
  }

  @override
  void initState() {
    super.initState();

    Timer( Duration(seconds: 4), () {
      reload();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Foo Animation"), backgroundColor: Colors.green,elevation: 10 , toolbarHeight: 50 , ),

      body: Center(
        child: Container(
          height: 150, width: 100,
          child: InkWell(
            onTap: (){
              Navigator.push(context , MaterialPageRoute(builder: (context) {
                return MyIamgePage();
              },));
            },
            child: Hero(
              tag: "sumit",
              child: Image.asset("assets/images/logo.jpg" , height: 150, width: 100 ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyIamgePage extends StatelessWidget {  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Hero(
      tag: "sumit",
      child: Image.asset("assets/images/logo.jpg"),
    ),
  );
}
}
