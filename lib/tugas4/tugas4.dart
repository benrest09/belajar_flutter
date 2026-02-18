import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const Tugas4()));
}

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> teman = [
      {
        'name': 'Bening',
        'desc': 'PPKD Jakpus',
        'icon': Icons.person,
        'color': Color(0xFF4A557F),
      },
      {
        'name': 'Pak Habibie',
        'desc': 'App Developer',
        'icon': Icons.person,
        'color': Color(0xFF9FA8DA),
      },
      {
        'name': 'Budi Santoso',
        'desc': 'Mahasiswa',
        'icon': Icons.person,
        'color': Color.fromARGB(255, 124, 125, 132),
      },
      {
        'name': 'Siti Aminah',
        'desc': 'Dosen',
        'icon': Icons.person,
        'color': Color(0xFF4A557F),
      },
      {
        'name': 'Ahmad Rizki',
        'desc': 'Programmer',
        'icon': Icons.person,
        'color': Color(0xFF9FA8DA),
      },
    ];

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
              "Tambahkan Kontak",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 117, 117, 117),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 250, 238, 246),
      ),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(decoration: InputDecoration(labelText: 'Nama Depan')),
          SizedBox(height: 16),

          TextField(decoration: InputDecoration(labelText: 'Nama Belakang')),
          SizedBox(height: 16),

          TextField(decoration: InputDecoration(labelText: 'Nomor Telepon')),
          SizedBox(height: 16),

          TextField(decoration: InputDecoration(labelText: 'Deskripsi')),
          SizedBox(height: 16),

          Text(
            "Daftar Kontak Anda",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16),

          GridView.count(
            crossAxisCount: 5,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 2.5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: teman.map((teman) {
              return Container(
                decoration: BoxDecoration(
                  color: teman['color'],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(teman['icon'], size: 30, color: Colors.white),
                  title: Text(
                    teman['name'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    teman['desc'],
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
