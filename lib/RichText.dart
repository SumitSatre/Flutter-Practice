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

        body: RichText(
          text: TextSpan(
              style: TextStyle(color: Colors.green , fontSize: 15 , fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: "Hi"),

                TextSpan(text: " Sumit" , style: TextStyle(color: Colors.redAccent , fontSize: 25 , fontWeight: FontWeight.bold))
              ]
          ),
        )
    );
  }

}
