import 'package:flutter/material.dart';

void main() => runApp(const Menu());

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: Container(
                height: height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.orange
                ),
              ),
            )        
          ],
        ),
      ),
    );
  }
}