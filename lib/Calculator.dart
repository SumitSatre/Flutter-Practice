import 'dart:async';

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
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,

      home: SpalashScreenPage(),
    );
  }
}

class SpalashScreenPage extends StatefulWidget {  @override
State<StatefulWidget> createState() {
  return SpashScreenState();
}
}

class SpashScreenState extends State<SpalashScreenPage>{

  @override

  void initState() {
    super.initState();

    Timer(Duration(seconds: 2) , () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return MyIntroPage();
        },));
    },);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/logo.jpg")),
    );
  }

}


class MyIntroPage extends StatelessWidget {

  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.green , title: Text("Flutter App"),),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Calculator" , style: TextStyle(fontSize: 30),),

              Container(
                width : 250,
                child: TextField(
                  controller: name,
                ),
              ),

              IconButton(
                  icon: Icon(Icons.calculate , color: Colors.black,size: 50,) ,
                  onPressed: (){
                    Navigator.push(context , MaterialPageRoute(builder: (context) {
                      return MyHomePage(name.text.toString());
                    }));
                  }
              ),
            ],
          ),
        )
    );
  }
}

class MyHomePage extends StatefulWidget {
  var namefromhome ;

  MyHomePage(this.namefromhome);

  @override
  State<StatefulWidget> createState() {
    return MyHomeState(namefromhome);
  }
}



class MyHomeState extends State<MyHomePage> {
  var namefromhome ;

  MyHomeState(this.namefromhome);

  var a = TextEditingController(), b = TextEditingController();
  var result = "";
  var Add , Mul , Div , Sub;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.orange , title: Text("Calculator"),),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(namefromhome ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: a,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12) ,
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2,
                      )
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      )
                  ),

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: b,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12) ,
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2,
                      )
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      )
                  ),

                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: (){
                      var no1 = int.parse(a.text.toString());
                      var no2 = int .parse(b.text.toString());

                      Add = no1 + no2;

                      result = "The addition of $no1 and $no2 is $Add ";

                      setState((){

                      });
                    },
                    child: Text("Add")) ,

                ElevatedButton(
                    onPressed: (){
                      var no1 = int.parse(a.text.toString());
                      var no2 = int .parse(b.text.toString());

                      Sub = no1 - no2;

                      result = "The Substraction of$no1 and $no2 is $Sub ";

                      setState((){

                      });
                    },
                    child: Text("Sub")) ,

                ElevatedButton(
                    onPressed: (){
                      var no1 = int.parse(a.text.toString());
                      var no2 = int .parse(b.text.toString());

                      Mul = no1 * no2;

                      result = "The Multiplication of $no1 and $no2 is $Mul ";

                      setState((){

                      });
                    },
                    child: Text("Mul")) ,

                ElevatedButton(
                    onPressed: (){
                      var no1 = int.parse(a.text.toString());
                      var no2 = int .parse(b.text.toString());

                      Div = no1 / no2;

                      result = "The Division of $no1 and $no2 is ${Div.toStringAsFixed(2)} ";

                      setState((){

                      });
                    },
                    child: Text("Div")) ,

              ],
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(result , style: TextStyle(
                  fontSize: 25 ,
                  fontWeight: FontWeight.bold , color: Colors.black ),),
            )
          ],
        )

    );
  }
}

