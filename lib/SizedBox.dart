import 'package:flutter/material.dart';
import 'package:my_app/rounded_button.dart';

void main(){
  runApp( FlutterApp() );
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("DashBoard"),backgroundColor: Colors.red
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 200,
              width: 200,

            ),


            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 60,
                minWidth: 50,
                maxHeight: 200,
                maxWidth: 200,
              ),


              child: SizedBox.expand(
                child: ElevatedButton(
                  onPressed: (){
                    print("Hi Sumit");
                  },
                  child: Text("Click here"),
                ),
              ),
            ),



            ConstrainedBox(

              constraints: BoxConstraints(
                minHeight: 100,
                minWidth: 150,
                maxHeight: 200,
                maxWidth: 200,
              ),
              child: SizedBox.shrink(
                child: ElevatedButton(
                  onPressed: (){
                    print("Hi Sumit");
                  },
                  child: Text("Click here"),
                ),
              ),
            ),

            SizedBox.square(
              dimension: 50,
              child: ElevatedButton(
                onPressed: (){
                  print("Hi Sumit");
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

                child: Text("Click here"),
              ),
            )

          ],
        )
    );
  }

}
