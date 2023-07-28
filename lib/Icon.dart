import 'package:flutter/material.dart';
import 'package:my_app/rounded_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

        body: Column(
          children: [
            Icon(
              Icons.access_alarm_outlined , color: Colors.redAccent ,
            ),

            IconButton(
                onPressed: (){
                  print("Hello Sumit");
                },
                icon: Icon(Icons.account_balance_wallet , color: Colors.green)
            ),

            ElevatedButton.icon(
              onPressed: (){
                print("Hello Sumit");
              } ,
              icon: Icon(Icons.ad_units , color: Colors.green),
              label: Text("Hi"),
            ),

            FaIcon(
              FontAwesomeIcons.google,
              color: Colors.blue,
              size: 25,

            ),
          ],
        )
    );
  }

}
