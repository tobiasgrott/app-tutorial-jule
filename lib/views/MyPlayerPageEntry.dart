import 'package:flutter/material.dart';

class MyPlayerPageEntry extends StatelessWidget {
  final String name;
  MyPlayerPageEntry({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(height: 50, child: Container(child: Text(name)));
  }
}
