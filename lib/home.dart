import 'package:flutter/material.dart';
import 'package:joshua/menu.dart';

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
  List<String> Names = ['joel', 'joshua', 'jackson', 'john','joeli', 'joshuai', 'jacksoni', 'johni'];

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
            child: const Icon(Icons.home_filled),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              height: height * 0.2,
              left: 0,
              right: 0,
              child: Container(
                color: bgBlue,
              ),
            ),
            Positioned(
              height: height * 0.8,
              top: height * 0.2,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black,
              ),
            ),
            Positioned(
              top: height * 0,
              height: height * 0.9,
              left: width * 0.02,
              right: width * 0.02,
              child: ListView.builder(
                itemCount: Names.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: height * 0.15,
                      child: InkWell(
                        child: Center(child: Text(Names[index].toUpperCase(),
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      )),
                      onTap: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(name: Names[index])))
                      },
                      ),
                      decoration: BoxDecoration(
                        color: bgWhite,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: bgWhite
                          )
                        ]
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}