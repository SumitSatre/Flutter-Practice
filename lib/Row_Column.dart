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
        Container(
          height: 400,
          width :350 ,
          color: Colors.lightBlue,
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("A" ,style : TextStyle(fontSize : 25)),

                  ElevatedButton(
                    child: Text("Click Here!!", style : TextStyle(
                      color : Colors.lightBlueAccent,
                      fontSize : 25,
                      fontWeight : FontWeight.bold,
                    )),
                    onPressed: (){
                      print("Hi Sumit");
                    },
                  ),

                  Text("C",style : TextStyle(fontSize : 25)),

                  Text("D",style : TextStyle(fontSize : 25)),

                  Text("E",style : TextStyle(fontSize : 25))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("C",style : TextStyle(fontSize : 25)),

                  Text("D",style : TextStyle(fontSize : 30)),
                ],
              ),

              Text("D",style : TextStyle(fontSize : 25)),

              Text("E",style : TextStyle(fontSize : 25))
            ],
          ),

        )

    );
  }
}
