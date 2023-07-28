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
        ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${index+1}"),
            title: Text("${arrName[index]}"),
            subtitle: Text("Number"),
            trailing: Icon(Icons.add),
          );
        },

            itemCount: arrName.length,
            separatorBuilder: (context, index) {
              return Divider(height: 50, thickness: 2);
            }
        )




    );
  }

}

/* padding = Inside the container,
margin = Outside the container
 */