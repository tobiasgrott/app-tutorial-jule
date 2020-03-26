import 'package:flutter/material.dart';
import 'package:flutterteammanagement/views/MyPlayerPage.dart';
import 'package:flutterteammanagement/views/MySchedulePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  _getPage(int pos) {
    switch (pos) {
      case 0:
        return MyPlayerPage();
      case 1:
        return MySchedulePage(title: "Spielplan",);
      default:
        return Text("error");
    }
  }

  _onSelectedIndex(int index) {
    setState(() => _selectedIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Navigations Menü"),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text('Spielerliste'),
            leading: Icon(Icons.person),
            onTap: () {
              _onSelectedIndex(0);
            },
          ),
          ListTile(
            title: Text('Spielplan'),
            leading: Icon(Icons.schedule),
            onTap: () {
              _onSelectedIndex(1);
            },
          )
        ],
      )),
      appBar: AppBar(
        title: Text('Julchens App'),
      ),
      body: _getPage(_selectedIndex),
    );
  }
}
