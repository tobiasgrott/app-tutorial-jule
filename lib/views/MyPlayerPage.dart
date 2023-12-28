import 'package:flutter/material.dart';
import 'package:flutterteammanagement/data/PlayerList.dart';
import 'package:flutterteammanagement/views/MyPlayerPageEntry.dart';

class MyPlayerPage extends StatefulWidget {
  MyPlayerPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyPlayerPageState createState() => _MyPlayerPageState();
}

class _MyPlayerPageState extends State<MyPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: PlayerList.length,
        itemBuilder: (BuildContext context, int index) {
          return MyPlayerPageEntry(name: PlayerList[index]);
        });
  }
}
