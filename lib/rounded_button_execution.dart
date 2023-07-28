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

  func(int a){
    print("logged!! $a");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("DashBoard"),backgroundColor: Colors.red
        ),

        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedButton(
                Bname: " Login" , icon : Icon(Icons.lock),
                textStyle: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),
                width_of_button: 125,

                callback: func,
              ),


              Container(height: 10,width: 20,),

              RoundedButton(
                Bname: " Sign Up" , width_of_button: 150 ,
                callback: (){
                  print("HI SUMIT");
                },
                icon: Icon(Icons.safety_check_outlined),
                textStyle: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),
                bgcolor: Colors.orange,

              )
            ],
          ),
        )
    );
  }

}
