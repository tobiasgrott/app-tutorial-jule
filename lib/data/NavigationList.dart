import 'package:flutter/material.dart';
import 'package:flutterteammanagement/views/MyPlayerPage.dart';
import 'package:flutterteammanagement/views/MySchedulePage.dart';

class NavigationListEntry extends StatelessWidget {
  final String name;
  final Widget target;
  final IconData icon;
  NavigationListEntry(
      {required this.icon, required this.name, required this.target});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Icon(this.icon),
        Text(this.name),
      ],
    ));
  }
}

final List<NavigationListEntry> navigationEntries = <NavigationListEntry>[
  new NavigationListEntry(
      icon: Icons.person, name: 'Spielerliste', target: new MyPlayerPage()),
  new NavigationListEntry(
      icon: Icons.schedule, name: 'Spielplan', target: new MySchedulePage())
];
