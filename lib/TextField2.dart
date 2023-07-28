import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  String userName = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sumit Flutter App"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    userName = nameController.text;
                  });
                  print(userName);
                  nameController.clear();
                },
                child: Text("Click Here!!"),
              ),
              Text(userName),
            ],
          ),
        ),
      ),
    );
  }
}
