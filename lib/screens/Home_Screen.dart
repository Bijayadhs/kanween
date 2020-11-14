import 'package:flutter/material.dart';
import 'package:kanweek/widgets/Bottom_Nav_Bar.dart';

// ignore: camel_case_types
class Home_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: Bottom_Nav_Bar(),
      body: Center(child: Text('KANBAN WEEKLY')),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        leading:
            IconButton(icon: Icon(Icons.menu), iconSize: 40, onPressed: () {}),
        title: Text('Kanweek'),
        actions: [
          IconButton(
            icon: Icon(Icons.apps),
            iconSize: 40,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_horiz_rounded),
            iconSize: 40,
            onPressed: () {},
          )
        ]);
  }
}
