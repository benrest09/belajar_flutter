import 'package:find_my_zawj/tugas9/listmap.dart';
import 'package:find_my_zawj/tugas9/listview.dart';
import 'package:find_my_zawj/tugas9/modellist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerGlobal extends StatefulWidget {
  const DrawerGlobal({super.key});

  @override
  State<DrawerGlobal> createState() => _DrawerGlobalState();
}

class _DrawerGlobalState extends State<DrawerGlobal> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
    TugasListView(),
    TugasListMap(),
    TugasModelList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "TUGAS 9",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () => _scaffoldKey.currentState?.openDrawer(),
          child: Icon(Icons.menu),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.bottomRight,
                    colors: [Colors.white, Color.fromARGB(255, 244, 143, 177)],
                  ),
                ),
              ),
            ),

            ListTile(
              title: Text("List in ListView Builder"),
              onTap: () {
                ontapItemDrawer(0);
              },
            ),
            ListTile(
              title: Text("List Map in ListView Builder"),
              onTap: () {
                ontapItemDrawer(1);
              },
            ),
            ListTile(
              title: Text("Model in ListView Builder"),
              onTap: () {
                ontapItemDrawer(2);
              },
            ),
          ],
        ),
      ),
      body: listWidget.elementAt(_currentIndex),
    );
  }
}
