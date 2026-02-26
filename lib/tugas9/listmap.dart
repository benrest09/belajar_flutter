import 'package:flutter/material.dart';

class TugasListMap extends StatelessWidget {
  TugasListMap({super.key});

  final List<Map<String, dynamic>> kategoriProfesi = [
    {"nama": "Guru", "icon": Icons.school},
    {"nama": "Dokter", "icon": Icons.local_hospital},
    {"nama": "Programmer", "icon": Icons.computer},
    {"nama": "Pengusaha", "icon": Icons.business},
    {"nama": "ASN", "icon": Icons.account_balance},
    {"nama": "Mahasiswa", "icon": Icons.menu_book},
    {"nama": "Desainer", "icon": Icons.brush},
    {"nama": "Perawat", "icon": Icons.medical_services},
    {"nama": "Dosen", "icon": Icons.cast_for_education},
    {"nama": "Dosen", "icon": Icons.cast_for_education},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 550,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 15,
                spreadRadius: 2,
                offset: Offset(0, 5),
              ),
            ],
          ),

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Data Kategori Pekerjaan di Aplikasi Taaruf",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: kategoriProfesi.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = kategoriProfesi[index];

                    return Container(
                      margin: EdgeInsets.all(7.0),
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Text(data["nama"]),
                        leading: Icon(data["icon"] as IconData),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
