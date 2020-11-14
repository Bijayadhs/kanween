import 'package:flutter/material.dart';

class Bottom_Nav_Bar extends StatefulWidget {
  @override
  _Bottom_Nav_BarState createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> {
  int _selectedIndex = 2;

  final List<String> _label = [
    'Pomo',
    'Sub-Task',
    'Add task',
    'Calendar',
    'Setting'
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
      iconSize: 40,
      elevation: 10,
      backgroundColor: Colors.orange[700],
      selectedItemColor: Colors.deepPurple[500],
      unselectedItemColor: Colors.deepPurple[200],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_outlined),
          label: _label[0],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_road),
          label: _label[1],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: _label[2],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: _label[3],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: _label[4],
        ),
      ],
    );
  }
}
