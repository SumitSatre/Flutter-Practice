

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation animation;
  late Animation colorAnimation ;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync: this , duration : Duration(seconds: 4));
    animation = Tween(begin: 0.0 , end : 300.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.indigoAccent , end : Colors.red).animate(animationController);

    animationController.addListener(() {
      setState(() {

      });
    });

    animationController.forward();
  }

  @override
  Widget build( BuildContext context) {

    var emailText = TextEditingController();
    var passText = TextEditingController();
    return Scaffold(
      appBar: AppBar(

        title: Text("Flutter"),
      ),

      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          color: colorAnimation.value,
        ),
      ),

    );
  }
}
