import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Deskripsi extends StatelessWidget {
  const Deskripsi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Find My Zawj',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 119, 164),
                    fontSize: 30,
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
            Text(
              "Deskripsi Aplikasi",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 117, 117, 117),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 250, 238, 246),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Find My Zawj adalah aplikasi edukasi pernikahan Islami yang membantu Muslim dan Muslimah mempersiapkan diri menuju pernikahan yang sakinah, mawaddah, warahmah.",
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.w200,
                backgroundColor: Color.fromARGB(255, 200, 238, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
