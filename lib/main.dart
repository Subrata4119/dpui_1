
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
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
          title: const Text("Login App"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Image.asset('images/logindemo.jpg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    "Log in Here",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      labelText: "UserName",
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),

                  ElevatedButton(onPressed: (){},
                   style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15,horizontal: 146)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        fontSize: 25
                      )
                    )
                   ),
                   child: const Text("Log in"),
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
