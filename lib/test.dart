import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade600,
        child: Container(
          margin: EdgeInsets.all(10.0),
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow.shade500,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 200,
                    height: 190,
                    color: Colors.green.shade400,
                    child: Center(
                      child: Text(
                        "B",
                        style: TextStyle(fontSize: 100, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      width: 200,
                      height: 190,
                      color: Colors.green.shade400,
                      child: Center(child: Icon(Icons.star)))
                ],
              ),
              Expanded(
                child: Container(
                  width: 200,
                  height: 400,
                  child: Center(
                    child: Text(
                      "B",
                      style: TextStyle(fontSize: 100, color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
