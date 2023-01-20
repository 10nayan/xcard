import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[400],
          title: const Text("Xcard"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Nayan Jyoti Patowary",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45, fontSize: 30, fontFamily: 'Lobster'),
              ),
              const SizedBox(height: 10),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images/nayan2.png"),
              ),
              const SizedBox(height: 10),
              const Text(
                "Mobile App Developer",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 50.0),
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text(
                      "+91 8486890785",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black45, fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 50.0),
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.mail),
                    SizedBox(width: 10),
                    Text(
                      "nayan.h4.aec@gmail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black45, fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
    );
  }
}
