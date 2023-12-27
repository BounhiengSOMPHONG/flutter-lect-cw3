import 'package:flutter/material.dart';
import 'package:flutter_application_1/lact26m12/home.dart';

class menub extends StatefulWidget {
  const menub({super.key});

  @override
  State<menub> createState() => _menubState();
}

class _menubState extends State<menub> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app show bottom bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Badge(label: Text("999+"), child: Icon(Icons.message)),
            label: "message",
          ),
          BottomNavigationBarItem(
            icon: Badge(
              label: Text(
                '3',
                style: TextStyle(),
              ),
              child: Icon(Icons.call),
            ),
            label: "call",
          ),
        ],
        selectedItemColor: Colors.red,
        selectedFontSize: 20.0,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
            if (index == 0) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => home()));
            } else if (index == 1) {
            } else if (index == 2) {}
          });
        },
      ),
    );
  }
}
