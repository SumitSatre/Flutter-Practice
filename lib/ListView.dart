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

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),

        body:
        ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Text("One" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900),)),

            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Text("two" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900),)),

            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Text("Three" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900),)),

            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Text("Four" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900),)),

            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Text("Five" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900),)),

            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Text("six" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900),)),

            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Text("seven" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900),)),

            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Text("eight" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900),)),
          ],
        )

    );
  }
}
