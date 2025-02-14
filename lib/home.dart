import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Myhome();
  }
}

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  Color bgBlue = const Color.fromARGB(255, 0, 140, 255);
  Color bgWhite = const Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: bgBlue,
          leading: InkWell(
            child: Icon(Icons.home_filled),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
                height: height * 0.25,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: bgBlue
                ),
              ),
            ),
            Positioned(
              top: height * 0.25,
              left: 0,
              height: height * 0.75,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color:  Color.fromARGB(255, 0, 0, 0)
                ),
              ),
            ),
            Positioned(
              top: height * 0,
              left: width * 0.02,
              height: height * 0.912,
              right: width * 0.02,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.35,
                          decoration: BoxDecoration(
                            color: bgWhite,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 0,
                                color: Colors.white,
                              )
                            ]
                          ),
                        ),
                        SizedBox(height: height * 0.02,),
                        Container(
                          height: height * 0.35,
                          decoration: BoxDecoration(
                            color: bgWhite,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 0,
                                color: Colors.white,
                              )
                            ]
                          ),
                        ),
                        SizedBox(height: height * 0.02,),
                        Container(
                          height: height * 0.35,
                          decoration: BoxDecoration(
                            color: bgWhite,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 0,
                                color: Colors.white,
                              )
                            ]
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}