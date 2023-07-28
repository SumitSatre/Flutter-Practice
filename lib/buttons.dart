

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  callback(){
    print("Clicked!!");
  }

  @override
  Widget build( BuildContext context) {

    var time = DateTime.now();

    return Scaffold(
        appBar: AppBar(

          title: Text("Flutter"),
        ),

        body: Column(
            children: [
              ElevatedButton(
                  onPressed: callback,
                  onLongPress: (){
                    print("Hi Sumit");
                  },
                  child: Text("Clich Here!!"),
              ),


              OutlinedButton(
                onPressed: (){
                  print("Hello World");
                },
                onLongPress: (){
                  print("Hi Sumit");
                },
                child: Text("Clich Here!!"),
              ),


              TextButton(
                onPressed: (){
                  print("Hello World");
                },
                onLongPress: (){
                  print("Hi Sumit");
                },
                child: Text("Clich Here!!"),
              ),
            ],
        )
    );
  }
}
