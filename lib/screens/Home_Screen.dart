import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

// ignore: camel_case_types
class _Home_ScreenState extends State<Home_Screen> {
  int _selectedIndex = 0;
  final List<String> _b = ['Apple', 'Banana', 'Carrot', 'Donut', 'Eggplant'];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          title: Text('Kanweek'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more),
              onPressed: () {},
            )
          ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        iconSize: 40,
        elevation: 10,
        backgroundColor: Colors.orange[700],
        selectedItemColor: Colors.deepPurple[500],
        unselectedItemColor: Colors.deepPurple[200],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_outlined),
            label: _b[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: _b[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_outlined),
            label: _b[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.zoom_out_map_outlined),
            label: _b[3],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces_outline),
            label: _b[4],
          ),
        ],
      ),
      body: Center(child: Text('KANBAN WEEKLY')),
    );
  }
}
