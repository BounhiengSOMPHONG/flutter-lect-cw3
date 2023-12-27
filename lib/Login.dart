import 'package:flutter/material.dart';
import 'package:flutter_application_1/test2.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool eye = true;
  TextEditingController user = TextEditingController();
  TextEditingController pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ເຂົ້າສູ່ລະບົບ'),
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
              SizedBox(
                height: 35.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          String struser = user.text;
                          String strpwd = pwd.text;
                          String str =
                              "Username : $struser \n Password : $strpwd";
                          print(str);
                        });
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
            ],
          ),
        ),
      ),
    );
  }
}
