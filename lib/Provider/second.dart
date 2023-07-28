import 'package:flutter/material.dart';
import 'package:my_app/Provider/listProvider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  SecondPage();

  @override
  State<SecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder : (context , ListModel , child)=> Scaffold(

        appBar: AppBar(title: Text("Provider")),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            ListModel.add();
          },
        ),

        body: Column(
          children: [
            Center(
              child: Text(ListModel.list[ListModel.list.length - 1].toString(), style: TextStyle(fontSize: 30)),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    child: Text(ListModel.list[index].toString(), style: TextStyle(fontSize: 25)),
                  );
                },
                itemCount: ListModel.list.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
