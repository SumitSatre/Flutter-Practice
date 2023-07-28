

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build( BuildContext context) {

    var time = DateTime.now();

    return Scaffold(
        appBar: AppBar(

          title: Text("Flutter"),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Select date"),

              ElevatedButton(
                  onPressed: () async {
                    DateTime? datepicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2024)
                    );

                    if(datepicked != null){
                      print("month is ${datepicked.month} , day is ${datepicked.day} , year is ${datepicked.year}");
                    }

                  },
                  child: Text("Slect Date")
              ),

              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? timepicked = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                      initialEntryMode: TimePickerEntryMode.input,
                    );

                    if(timepicked != null){
                      print("Minute is ${timepicked.minute} , Hour is ${timepicked.hour}");
                    }
                  },
                  child: Text("Select Time"))
            ],
          ),

        )
    );
  }
}
