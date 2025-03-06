import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final String name;
  const Menu({super.key, required this.name});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios_new),
          onTap: () => Navigator.pop(context),
        ),
        title: Text("Hello, ${widget.name}"), // Display name in AppBar
      ),
      body: Center(
        child: Text(
          widget.name, // Correct way to use the name
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
