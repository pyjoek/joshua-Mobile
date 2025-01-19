import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Myapp();
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

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 0,
                  height: height * 0.25,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent
                  ),
                ),
              ),
              Positioned(
                top: height * 0.25,
                left: 0,
                height: height * 0.25,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 0, 0, 0)
                  ),
                ),
              ),
              Positioned(
                top: height * 0.15,
                left: width * 0.1,
                height: height * 0.95,
                right: width * 0.1,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 170, 19, 19),
                        blurRadius: 20,
                        spreadRadius: 5,
                        offset: Offset(4, 4)
                      )
                    ]
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