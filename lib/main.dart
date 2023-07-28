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

    var arrName = ["one" , "Two" , "Three" , "Four" , "Five"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),

      body:
      ListView.separated(itemBuilder: (context, index) {
        return Text(arrName[index] , style: TextStyle(fontWeight: FontWeight.w800 , fontSize: 40));
      },

        itemCount: arrName.length,
        separatorBuilder: (context, index) {
          return Divider(height: 50, thickness: 2);
        },
      ),

    );
  }
}
