

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

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build( BuildContext context) {

    var emailText = TextEditingController();
    var passText = TextEditingController();
    return Scaffold(
      appBar: AppBar(

        title: Text("Flutter"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height : 50,
              width: 300,

              child: TextField(
                controller : emailText,
                decoration: InputDecoration(
                    hintText: "Enter Username ",
                    suffixText: "@gmail.com",
                    prefixIcon: Icon(Icons.email_outlined ) ,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye , color: Colors.redAccent,),
                      onPressed: (){
                        print("Hi sumit");
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),

                    )
                ),
              )),

          Container(
            height: 10,
          ),

          Container(
              height : 50,
              width: 300,
              child: TextField(
                keyboardType: TextInputType.phone,
                // enabled: false, // by using this textfield cannot be accesed desabled border will be used
                controller : passText,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    focusedBorder : OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )
                ),
              )),

          ElevatedButton(
              onPressed:(){
                String email = emailText.text;
                String password  = passText.text;

                emailText.clear();
                passText.clear();

                print("Email = $email , Password = $password");
              },
              child: Text("Login"))
        ],
      ),



    );
  }
}
