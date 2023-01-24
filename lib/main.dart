import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

String userName = "Jeet Barman";
String mailId = "jeetbarman38@gmail.com";
String phoneNo = "+918402894835";
String tagLine = "Social Influencer";
String publicAccount = "www.instagram.com";
String publicUserName = "_auxin__/?igshid=YmMyMTA2M2Y%3D";
String image = "images/jeet.jpg";

final Uri phoneUrl = Uri.parse('tel:$phoneNo');
final Uri mailUrl =
    Uri.parse("mailto:$mailId?subject=Greetings!&body=Hi, $userName");
final Uri publicUrl = Uri.parse("https://$publicAccount/$publicUserName");

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
          title: Text(userName),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                userName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 36,
                  fontFamily: 'Lobster',
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  _launchInstaUrl();
                },
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(image),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                tagLine,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 35.0),
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
                        _launchUrl();
                      },
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      phoneNo,
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(color: Colors.black45, fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 35.0),
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
                        _launchMailUrl();
                      },
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      mailId,
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(color: Colors.black45, fontSize: 20),
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
  if (!await launchUrl(phoneUrl)) {
    throw 'Could not launch $phoneUrl';
  }
}

Future<void> _launchMailUrl() async {
  if (!await launchUrl(mailUrl)) {
    throw 'Could not launch $mailUrl';
  }
}

Future<void> _launchInstaUrl() async {
  if (!await launchUrl(publicUrl)) {
    throw 'Could not launch $publicUrl';
  }
}
