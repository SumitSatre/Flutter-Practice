
import 'package:flutter/material.dart';
import 'package:my_app/Provider/second.dart';
import 'package:my_app/Provider/listProvider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget{


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder : (context , ListModel , child)=> Scaffold(
        appBar: AppBar(title: Text("Provider")),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            ListModel.add();
          },
        ) ,

        body: Column(
          children: [
            Center(
              child: Text(ListModel.list[ListModel.list.length - 1].toString() , style: TextStyle(fontSize: 30),),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(itemBuilder: (context , index) {
                  return Container( margin: EdgeInsets.all(5), child: Text(ListModel.list[index].toString()  , style: TextStyle(fontSize: 25),));
                },
                itemCount: ListModel.list.length,
                ),
              ),
            ),

            ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage() ));
            }, child: Text("Second"))
          ],
        ),
      ),
    );
  }
}