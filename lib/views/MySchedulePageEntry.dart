import 'package:flutter/material.dart';

class MySchedulePageEntry extends StatelessWidget {
  final String start;
  final String team1;
  final String team2;
  final String result;

  MySchedulePageEntry(
      {required this.start,
      required this.team1,
      required this.team2,
      required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            Text(this.start, textScaler: TextScaler.linear(0.5)),
          ]),
          Row(children: <Widget>[
            Expanded(child: Text(this.team1), flex: 4),
            Expanded(
              child: Text(this.result),
              flex: 1,
            ),
            Expanded(child: Text(this.team2), flex: 4)
          ]),
          Divider(height: 2),
        ]));
  }
}
