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

  double width_ = 200 , height_ = 100;

  bool flag = true;

  // Color? bgcolor = Colors.redAccent;

  Decoration mydecor = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    color: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Foo Animation"), backgroundColor: Colors.green,elevation: 10 , toolbarHeight: 50 , ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.elasticOut,
              height: height_ ,
              width: width_ ,
              decoration: mydecor,
              duration: Duration(seconds: 2),

            ),


            ElevatedButton(
                onPressed: (){
                  setState(() {
                    if(flag){
                      height_ = 100;
                      width_ = 200 ;
                      mydecor = BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.green,
                        border: Border.all(color: Colors.black),
                      );

                      flag = false;
                    }


                    else{
                      height_ = 200;
                      width_ = 100 ;
                      mydecor = BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.indigoAccent,
                        border: Border.all(color: Colors.black),
                      );

                      flag = true;
                    }
                  });
                },
                child: Text("Animate")),


            ElevatedButton(
                onPressed: (){
                  setState(() {
                    height_ = 200;
                    width_ = 100 ;

                  });
                },
                child: Text("Rearrange")),
          ],
        ),
      ),


    );
  }

}