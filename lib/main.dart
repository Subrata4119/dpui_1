import 'dart:ui';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login App"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Image.asset('images/logindemo.jpg'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Log in Here",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "UserName",
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),

                  ElevatedButton(onPressed: (){},
                   child: Text("Log in"),
                   style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15,horizontal: 146)),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(
                        fontSize: 25
                      )
                    )
                   ),
                   )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
