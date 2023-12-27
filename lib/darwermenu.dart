import 'package:flutter/material.dart';

class darmenu extends StatefulWidget {
  const darmenu({super.key});

  @override
  State<darmenu> createState() => _darmenuState();
}

class _darmenuState extends State<darmenu> {
  Widget logo() {
    return Container(
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: AssetImage("images/watanabe.jpg"),
      ),
    );
  }

  Widget Text1() {
    return Text(
      "BBB",
      style: TextStyle(
        color: Colors.red,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget Text2LN() {
    return Text(
      "login by :",
      style: TextStyle(
        color: Colors.red,
      ),
    );
  }

  Widget headeritem() {
    return DrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/1181293.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            logo(),
            SizedBox(
              height: 10.0,
            ),
            Text1(),
            SizedBox(
              height: 10.0,
            ),
            Text2LN(),
          ],
        ));
  }

  Widget unititem() {
    return ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text("System"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget cgitem() {
    return ListTile(
      leading: Icon(Icons.category),
      title: Text("System 1"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget productitem() {
    return ListTile(
      leading: Icon(Icons.storage),
      title: Text("System 2"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget saleitem() {
    return ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text("System 3"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget orderitem() {
    return ListTile(
      leading: Icon(Icons.payment),
      title: Text("System 4"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget importitem() {
    return ListTile(
      leading: Icon(Icons.add_box_sharp),
      title: Text("System 5"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget reportitem() {
    return ListTile(
      leading: Icon(Icons.add_chart),
      title: Text("System 6"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget emyitem() {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text("System 7"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget supplyitem() {
    return ListTile(
      leading: Icon(Icons.send_and_archive),
      title: Text("System 8"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget changeitem() {
    return ListTile(
      leading: Icon(Icons.currency_exchange),
      title: Text("System 9"),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget Listmenuitem() {
    return Container(
      child: Column(
        children: [
          Divider(
            color: Colors.red,
          ),
          unititem(),
          Divider(),
          cgitem(),
          Divider(),
          productitem(),
          Divider(),
          saleitem(),
          Divider(),
          orderitem(),
          Divider(),
          importitem(),
          Divider(),
          reportitem(),
          Divider(),
          emyitem(),
          Divider(),
          supplyitem(),
          Divider(),
          changeitem(),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sales System By Teng")),
      drawer: Drawer(
        child: ListView(
          children: [
            headeritem(),
            Listmenuitem(),
          ],
        ),
      ),
      body: Center(child: Text("System")),
    );
  }
}
