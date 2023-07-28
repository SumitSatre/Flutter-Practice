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
        primarySwatch: Colors.blue,
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
          title: Text("DashBoard"),
        ),

        body:
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                // borderRadius: BorderRadius.all(Radius.circular(20)),

                border: Border.all(
                  color: Colors.black87,
                  width: 3,
                ),

                boxShadow: [
                  BoxShadow(
                    blurRadius: 25,
                  )
                ],

                shape: BoxShape.circle,
                // To use shape we have comment out borderRadius
              ),

            ),
          ),
        )

    );
  }

}
