import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const Tugas3()));
}

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                const SizedBox(width: 8),
                const Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 239, 97, 144),
                  size: 24,
                ),
              ],
            ),
            SizedBox(height: 4),
            Text(
              "Complete Your Profile",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 117, 117, 117),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 250, 238, 246),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukkan Nama Lengkap Anda',
              ),
            ),
            SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(labelText: 'Masukkan Pekerjaan Anda'),
            ),
            SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
                labelText: 'Masukkan Nomor Telepon Anda',
              ),
            ),
            SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
                labelText: 'Ceritakan Tentang Diri Anda',
              ),
            ),
            SizedBox(height: 16),
            Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 15)),

            Text(
              "Share Your Lifestyle !!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),

            GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),

              children: [
                Stack(
                  children: [
                    Positioned(
                      width: 380,
                      height: 380,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 12, 52),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.add, size: 30),
                      ),
                    ),
                  ],
                ),

                Stack(
                  children: [
                    Positioned(
                      width: 380,
                      height: 380,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 99, 64),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.add, size: 30),
                      ),
                    ),
                  ],
                ),

                Stack(
                  children: [
                    Positioned(
                      width: 380,
                      height: 380,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 64, 255, 115),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.add, size: 30),
                      ),
                    ),
                  ],
                ),

                Stack(
                  children: [
                    Positioned(
                      width: 380,
                      height: 380,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 64, 77, 255),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.add, size: 30),
                      ),
                    ),
                  ],
                ),

                Stack(
                  children: [
                    Positioned(
                      width: 380,
                      height: 380,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 139, 198),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.add, size: 30),
                      ),
                    ),
                  ],
                ),

                Stack(
                  children: [
                    Positioned(
                      width: 380,
                      height: 380,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 12, 79, 109),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.add, size: 30),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
