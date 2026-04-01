import 'package:find_my_zawj/tugas14/harry_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuHouseScreen extends StatelessWidget {
  const MenuHouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> houses = [
      {"name": "Gryffindor", "image": "assets/images/gryffindor.png"},
      {"name": "Slytherin", "image": "assets/images/slytherin.png"},
      {"name": "Hufflepuff", "image": "assets/images/hufflepuff.png"},
      {"name": "Ravenclaw", "image": "assets/images/ravenclaw.png"},
    ];

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/bg_harry.jpg", fit: BoxFit.cover),
          ),

          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.4)),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Pilih House",
                  style: TextStyle(
                    fontFamily: 'Harry',
                    fontSize: 40,
                    color: Color(0xFFD4AF37),
                  ),
                ),
                const SizedBox(height: 30),

                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 40,
                  runSpacing: 40,
                  children: houses.map((house) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                HarryScreen(houseName: house["name"]!),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 120,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              house["image"]!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              house["name"]!,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cinzel(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD4AF37),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
