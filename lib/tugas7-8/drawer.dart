import 'package:belajar_flutter/tugas7-8/datepicker.dart';
import 'package:belajar_flutter/tugas7-8/dropdown.dart';
import 'package:belajar_flutter/tugas7-8/switch.dart';
import 'package:belajar_flutter/tugas7-8/timepicker.dart';
import 'package:belajar_flutter/tugas7-8/checkbox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TugasDrawer extends StatefulWidget {
  const TugasDrawer({super.key});

  @override
  State<TugasDrawer> createState() => _TugasDrawerState();
}

class _TugasDrawerState extends State<TugasDrawer> {
  int _currentIndex = 0;

  void ontapItem(int index) {
    _currentIndex = index;
    setState(() {});
  }

  void ontapItemDrawer(int index) {
    _currentIndex = index;
    setState(() {});
    Navigator.pop(context);
  }

  static List<Widget> listWidget = [
    TugasSwitch(),
    TugasCheckbox(),
    TugasDropdown(),
    TugasDatePick(),
    TugasTimePick(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 237, 152, 180),

        title: Center(
          child: Text(
            "TUGAS 7 DAN 8",
            style: GoogleFonts.openSans(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                color: Color.fromARGB(255, 227, 180, 215),
                height: 30,
              ),
            ),
            ListTile(
              title: Text("switch"),
              onTap: () {
                ontapItemDrawer(0);
              },
            ),

            ListTile(
              title: Text("checkbox"),
              onTap: () {
                ontapItemDrawer(1);
              },
            ),

            ListTile(
              title: Text("dropdown"),
              onTap: () {
                ontapItemDrawer(2);
              },
            ),

            ListTile(
              title: Text("datepicker"),
              onTap: () {
                ontapItemDrawer(3);
              },
            ),

            ListTile(
              title: Text("timepicker"),
              onTap: () {
                ontapItemDrawer(4);
              },
            ),
          ],
        ),
      ),
      body: listWidget.elementAt(_currentIndex),
    );
  }
}
