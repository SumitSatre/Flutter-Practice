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

class DashBoardScreen extends StatefulWidget{

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  Future<int> futureFunc() async{
    await Future.delayed(Duration(seconds: 5));
    return 14;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard"),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    futureFunc();
                    setState(() {

                    });
                  },
                  child: Text("Rebuild")),

              FutureBuilder(
                future: futureFunc(),
                builder: (context , snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting ){
                    return CircularProgressIndicator();
                  }
                  else if(snapshot.connectionState == ConnectionState.done){

                    if(snapshot.hasError){
                      return Text(snapshot.error.toString() , style: TextStyle(fontSize: 40),);
                    }
                    else{
                      return Text(snapshot.data.toString() , style: TextStyle(fontSize: 40),);
                    }

                  }
                  else{
                    return Text(snapshot.connectionState.toString(), style: TextStyle(fontSize: 40),);
                  }


                },
              ),
            ],
          ),
        ),
    );
  }
}

/*
count  == if we want fixed amount of containers in row (Count fix in row)
 extent = if we want fixed size of container
 builder = Used when unknown number of containers (content)
            Combination of count and extent
 */