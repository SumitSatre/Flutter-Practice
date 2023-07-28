import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var arrName = [ { "Name" : "Sumit" , 'MoNo' : 2348464546 , 'unread' : 2 } , { "Name" : "Saurabh" , 'MoNo' : 968868656 , 'unread' : 3 }
      , { "Name" : "Tejas" , 'MoNo' : 78964546 , 'unread' : 1 } , { "Name" : "Yash" , 'MoNo' : 569464546 , 'unread' : 5 } ,
      { "Name" : "Sumit" , 'MoNo' : 2348464546 , 'unread' : 2 } , { "Name" : "Saurabh" , 'MoNo' : 968868656 , 'unread' : 3 }
      , { "Name" : "Tejas" , 'MoNo' : 78964546 , 'unread' : 1 } , { "Name" : "Yash" , 'MoNo' : 569464546 , 'unread' : 5 } ,
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),

        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(

            children: arrName.map((value) {
              return ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(value["Name"].toString()),
                subtitle: Text(value["MoNo"].toString()),
                trailing : Text(value["unread"].toString()),

              );
            }).toList(),
          ),
        )

    );
  }
}
