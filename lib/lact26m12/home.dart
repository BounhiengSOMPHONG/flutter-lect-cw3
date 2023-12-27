import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home")),
      body: Center(
        child: Text(
          "home",
          style: TextStyle(color: Colors.amber.shade100, fontSize: 20),
        ),
      ),
    );
  }
}
