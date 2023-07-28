import 'package:flutter/material.dart';

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
          title: Text("DashBoard"),
        ),

        body:Container(
          height: 775,
          width: 384,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 150,
                    width: 384,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.all(Radius.circular(20)),

                        border: Border.all(
                          color: Colors.black87,
                          width: 3,

                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 10 ,)
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(child : Text("Click Here!!") ,
                                onPressed: (){
                                  print("Hi Sumit"); })),

                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(child : Text("Click Here!!") ,
                                onPressed: (){
                                  print("Hi Sumit"); })),

                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(child : Text("Click Here!!") ,
                                onPressed: (){
                                  print("Hi Sumit"); })),


                      ],



                    ),
                  ),

                  // Second
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 285,
                    width: 384,
                    child: InkWell(
                        onTap: (){
                          print("Hey Sumit OP Image");
                        },
                        child: Image.asset("assets/images/nature.jpg")),
                  ),


                  Container(
                    height: 150,
                    width: 768,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.all(Radius.circular(20)),

                        border: Border.all(
                          color: Colors.black87,
                          width: 3,

                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 10 ,)
                        ]
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:[ Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ElevatedButton(child : Text("Click Here!!") ,
                                  onPressed: (){
                                    print("Hi Sumit"); })),

                          Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ElevatedButton(child : Text("Click Here!!") ,
                                  onPressed: (){
                                    print("Hi Sumit"); })),

                          Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ElevatedButton(child : Text("Click Here!!") ,
                                  onPressed: (){
                                    print("Hi Sumit"); })),

                          Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ElevatedButton(child : Text("Click Here!!") ,
                                  onPressed: (){
                                    print("Hi Sumit"); })),

                          Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ElevatedButton(child : Text("Click Here!!") ,
                                  onPressed: (){
                                    print("Hi Sumit"); })),

                          Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ElevatedButton(child : Text("Click Here!!") ,
                                  onPressed: (){
                                    print("Hi Sumit"); })),
                        ],



                      ),],
                    ),
                  ),


                  Container(
                    height: 150,
                    width: 384,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.all(Radius.circular(20)),

                        border: Border.all(
                          color: Colors.black87,
                          width: 3,

                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 10 ,)
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(child : Text("Click Here!!") ,
                                onPressed: (){
                                  print("Hi Sumit"); })),

                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(child : Text("Click Here!!") ,
                                onPressed: (){
                                  print("Hi Sumit"); })),

                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(child : Text("Click Here!!") ,
                                onPressed: (){
                                  print("Hi Sumit"); })),


                      ],



                    ),
                  ),


                  Container(
                    height: 150,
                    width: 384,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.all(Radius.circular(20)),

                        border: Border.all(
                          color: Colors.black87,
                          width: 3,

                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 10 ,)
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(child : Text("Click Here!!") ,
                                onPressed: (){
                                  print("Hi Sumit"); })),

                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(child : Text("Click Here!!") ,
                                onPressed: (){
                                  print("Hi Sumit"); })),

                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(child : Text("Click Here!!") ,
                                onPressed: (){
                                  print("Hi Sumit"); })),


                      ],



                    ),
                  ),


                ],

              ),
            ] , ),
        )


    );
  }

}