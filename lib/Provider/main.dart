import 'package:flutter/material.dart';
import 'package:my_app/Provider/home.dart';
import 'package:my_app/Provider/listProvider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp( FlutterApp() );
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> ListProvider() )
      ],
      child: (
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      )
      ),
    );
  }

}
