// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Step 1 ==> Hot Reloading
void main() {
  runApp(MyApp());
}

// Step 1 ==> For Hot Reload to work, a Stateless Widget is needed
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            // (i) container and the properties
            color: Colors.red,
            height: 200.0,
            width: 200.0,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Hello',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
*/

// Step 2 ==> Layout ==> Column and Width
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // (i) container and the properties
                color: Colors.red,
                height: 100.0,
                width: 300,
                child: const Text(
                  'Container 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // Container(
              //   width: 100.0,
              //   height: 100,
              //   color: Colors.white,
              //   child: const Text("Container 2"),
              // ),
              // Container(
              //   width: 100.0,
              //   height: 100,
              //   color: Colors.blue,
              //   child: const Text("Container 3"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

// Step 3 ==> Layout ==> Column and Width Challenge
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                color: Colors.red,
                height: 100.0,
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                width: 100.0,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

// Step 3 ==> Layout ==> Column and Width Challenge
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/user.png'),
              ),
              Text(
                "John Doe",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                "Software Developer".toUpperCase(),
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source  Sans Pro',
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "+44 123 456 789",
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "johndoe@example.com",
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
