import 'package:flutter/material.dart';

class Login_sign extends StatefulWidget {
  const Login_sign({super.key});

  @override
  State<Login_sign> createState() => _Login_signState();
}

class _Login_signState extends State<Login_sign> {
  bool eye = true;
  TextEditingController user = TextEditingController();
  TextEditingController pwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(30, 30, 30, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: user,
                decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: pwd,
                obscureText: eye,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          eye = !eye;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye)),
                  prefixIcon: Icon(Icons.key_off_outlined),
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
