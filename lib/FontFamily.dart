import 'package:flutter/material.dart';

void main(){
  runApp( FlutterApp() );
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget{

  var arrName = ["Sumit" , "Saurabh" , "Tejas" , "Yash" , "King" , "Sumit" , "Saurabh" , "Tejas" , "Yash" , "King"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("                      DashBoard"),
        ),

        body :
        Text("Hello Sumit" , style : TextStyle(
            fontFamily: 'FontMain,
        ))

    );
  }

}
