import 'package:flutter/material.dart';
import 'package:joshua/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    );
  }
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Color bgBlue = const Color.fromARGB(255, 0, 140, 255);
  Color bgWhite = const Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
          children: [
             Positioned.fill(
              child: Image.asset(
                'asset/image.png', // Path to your image
                fit: BoxFit.cover, // Ensures the image covers the entire screen
              ),
            ),
            Positioned(
              left: width * 0.35,
              right: width * 0.35,
              bottom: height * 0.05,
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHome()));
                },
                child: const Text("Get Started"),
              ),
            ),
            Positioned(
              child: Column(
                children: [
                  Text("Joshua", 
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 55),
              ),
              Container(
                    width: 100, // Adjust this width if necessary
                    height: 2,  // Height of the line
                    color: Colors.white, // White color for the line
                    margin: const EdgeInsets.symmetric(vertical: 10), // Space around the line
                  ),
              Text("TRAVEL", 
              style: TextStyle(fontWeight: FontWeight.w100, color: Colors.white, fontSize: 40),
              ),
                ],
              ),
              left: width * 0.4,
              right: width * 0.1,
              bottom: height * 0.45,
            )
          ],
        ),
      );
  }
}