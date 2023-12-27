import 'package:flutter/material.dart';

class test2 extends StatefulWidget {
  const test2({super.key});

  @override
  State<test2> createState() => _test2State();
}

class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HI"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade300,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter the name",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter the surname",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter the Username",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 30),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter the email",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
