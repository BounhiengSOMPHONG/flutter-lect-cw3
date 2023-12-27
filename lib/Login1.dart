import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_sign.dart';
import 'package:flutter_application_1/test2.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
              onPressed: () {
                MaterialPageRoute route = MaterialPageRoute(
                    builder: (BuildContext context) => Login_sign());
                Navigator.of(context).push(route);
              },
              child: Text('Sign In')),
          SizedBox(
            width: 20.0,
          ),
          ElevatedButton(
              onPressed: () {
                MaterialPageRoute route = MaterialPageRoute(
                    builder: (BuildContext context) => test2());
                Navigator.of(context).push(route);
              },
              child: Text('Sign Up')),
        ],
      ),
    );
  }
}
