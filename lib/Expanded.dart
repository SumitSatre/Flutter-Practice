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

    var arrName = ["one" , "Two" , "Three" , "Four" , "Five" , "one"
      , "Two" , "Three" , "Four" , "Five" , "one" , "Two" , "Three" , "Four" , "Five" , "one" , "Two" , "Three" , "Four" , "Five"];

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),

        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(

            children: arrName.map((value)  {
              return Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade100,

                    border: Border.all(color: Colors.black)

                ),

                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(Icons.account_circle)),
                    Expanded(
                        flex : 9,
                        child: Center(child: Text(value))),
                  ],
                ),
              );
            }).toList(),
          ),
        )

    );
  }
}
