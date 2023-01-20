import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('tel:+918486890785');

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
          title: const Text("Liku"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Likumani Deka",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 36,
                  fontFamily: 'Lobster',
                ),
              ),
              const SizedBox(height: 10),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images/liku3.jpg"),
              ),
              const SizedBox(height: 10),
              const Text(
                "BSc Nursing Student",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white70,
                ),
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        _onSearchButtonPressed();
                      },
                      tooltip: 'Increase volume by 10',
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "+91 9365632699",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black45, fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white70,
                ),
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.mail,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "likumanideka0@gmail.com",
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

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

void _onSearchButtonPressed() {
  print("search button clicked");
}
