

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
          primarySwatch: Colors.red,
          textTheme: TextTheme(
              headline1 : TextStyle(fontFamily: "FontMain" , fontSize: 200 , fontWeight: FontWeight.w700),

              headline2: TextStyle( fontSize: 100 , fontWeight: FontWeight.w600)
          )

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

        body:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                  shadowColor: Colors.red,
                  elevation: 7,
                  child: Text("Sumit" , style: TextStyle(fontSize: 35 ,fontWeight: FontWeight.bold ),)
              ),

              Card(
                shadowColor: Colors.black,
                elevation : 9,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.transparent,
                ),
              )
            ] )


    );
  }
}
