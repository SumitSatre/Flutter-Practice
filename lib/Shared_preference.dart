import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp( FlutterApp() );
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage() ,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var name = "No value";
  var nameController = TextEditingController();

  get_value() async{
    var prefs = await SharedPreferences.getInstance();
    var getname = prefs.getString("name");
    name = getname != null ? getname : "no value";

    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();

    get_value();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Shared preferences"))),

      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    label: Text("Name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),

                    )
                ),
              ),
            ),

            ElevatedButton(
                onPressed: () async{
                  var name = nameController.text.toString();
                  var prefs = await SharedPreferences.getInstance();

                  prefs.setString("name", name);

                  get_value();

                  nameController.clear();

                },
                child: Text("Save")),

            Text(name),
          ],
        ),
      ),
    );
  }
}