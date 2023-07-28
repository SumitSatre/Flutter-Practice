import 'package:flutter/material.dart';
import 'package:my_app/rounded_button.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("DashBoard"),backgroundColor: Colors.red
      ),

      body: Wrap(
        alignment: WrapAlignment.spaceAround,
        spacing: 10,
        direction: Axis.vertical,
        //runSpacing: 10,
        children: [
          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.blue,
          ),

          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.red,
          ),

          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.pink,
          ),

          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.orangeAccent,
          ),

          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.yellowAccent,
          ),

          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.greenAccent,
          ),

          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.pink,
          ),

          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.orangeAccent,
          ),

          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.yellowAccent,
          ),

          Container(
            height : 150 ,
            width: 150 ,
            color: Colors.greenAccent,
          ),
        ],
      ),
    );
  }

}
