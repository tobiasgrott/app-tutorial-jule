import 'package:flutter/material.dart';
import 'package:flutterteammanagement/data/NavigationList.dart';
import 'package:flutterteammanagement/data/ScheuldeList.dart';

class MySchedulePage extends StatefulWidget {
  MySchedulePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MySchedulePageState createState() => _MySchedulePageState();
}

class _MySchedulePageState extends State<MySchedulePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: ScheduleList.length,
        itemBuilder: (BuildContext context, int index) {
          return ScheduleList[index];
        });
  }
}
