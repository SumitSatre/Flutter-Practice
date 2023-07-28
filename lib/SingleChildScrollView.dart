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
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              height : 300,
              width : 200,
              color : Colors.amber,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    height : 300,
                    width : 200,
                    color : Colors.redAccent,
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 5),
                    padding: ,
                    height : 300,
                    width : 200,
                    color : Colors.black87,
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 5),
                    height : 300,
                    width : 200,
                    color : Colors.orangeAccent,
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 5),
                    height : 300,
                    width : 200,
                    color : Colors.redAccent,
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 5),
              height : 300,
              width : 200,
              color : Colors.orange,
            ),

            Container(
              margin: EdgeInsets.only(bottom: 5),
              height : 300,
              width : 200,
              color : Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}
