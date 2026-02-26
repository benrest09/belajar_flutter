import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Find My Zawj',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE76CA3),
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 239, 97, 144),
                  size: 24,
                ),
              ],
            ),
            SizedBox(height: 4),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 250, 238, 246),
      ),
    );
  }
}
