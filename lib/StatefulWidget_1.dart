import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( MyApp() );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {  @override
State<StatefulWidget> createState() {
  return MyHomeState();
}
}

class MyHomeState extends State<MyHomePage>{

  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        backgroundColor: Colors.green ,
        title: Text("Flutter App"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count : $count" , style: TextStyle(fontSize: 50),),

            ElevatedButton(
                onPressed: (){

                  setState(() {
                    count++;
                    print("$count");
                  });
                },
                child: Text("Increement Count"))
          ],
        ),
      ),
    );
  }

}