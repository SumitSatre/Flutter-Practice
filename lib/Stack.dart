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
          title: Text("DashBoard"),backgroundColor: Colors.red
      ),

      body: Container(
        height: 250,
        width: 250,
        child: Stack(
            children: [
              Container(
                height: 150,
                width: 200,
                color: Colors.blue,
              ),

              Positioned(
                left: 10,
                top: 20,
                child: Container(
                  height: 200,
                  width: 300,
                  color: Colors.orange,
                ),
              ),

            ]
        ),
      ),
    );
  }

}
