import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/buttons.dart';
import 'package:my_app/callbackfunction.dart';

void main(){
  runApp( FlutterApp() );
}

class FlutterApp extends StatelessWidget {  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
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

  double opacity_ = 1;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Foo Animation"), backgroundColor: Colors.green,elevation: 10 , toolbarHeight: 50 , ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity_,
              curve:  Curves.slowMiddle,
              duration: Duration(seconds: 1),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),

            ElevatedButton(
                onPressed: (){
                  setState((){
                    if(flag){
                      opacity_ = 1;
                      flag = false;
                    }

                    else{
                      opacity_ = 0;
                      flag = true;
                    }
                  });
                },
                child: Text("Close"))
          ],
        ),
      ),
    );
  }

}