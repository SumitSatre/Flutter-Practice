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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),backgroundColor: Colors.amber
      ),

      body: Stack(
        children: [
          Container(
            height: 100,
            width: 80,
            color: Colors.blue,
          )
        ],
      ),
    );
  }

}
