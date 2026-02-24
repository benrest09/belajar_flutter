import 'package:belajar_dirumah/deskripsi.dart';
import 'package:belajar_dirumah/drawer.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  void ontapItem(int index) {
    _currentIndex = index;
    setState(() {});
  }

  final List<Widget> listWidget = [TugasDrawer(), Deskripsi()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listWidget.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            backgroundColor: Color.fromARGB(255, 238, 115, 197),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
            backgroundColor: Color.fromARGB(255, 238, 115, 197),
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 143, 132, 126),
        selectedIconTheme: IconThemeData(
          color: Color.fromARGB(255, 143, 132, 126),
        ),
        currentIndex: _currentIndex,
        onTap: ontapItem,
      ),
    );
  }
}
