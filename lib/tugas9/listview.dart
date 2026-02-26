import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TugasListView extends StatelessWidget {
  TugasListView({super.key});

  final List<String> kategoriTaaruf = [
    "Nama Lengkap",
    "Jenis Kelamin",
    "Usia",
    "Pekerjaan",
    "Domisili",
    "Status Pernikahan",
    "Jumlah Hafalan",
    "Username",
    "Password",
    "Apakah Rajin Sholat",
    "Gaji",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
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
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    "Data Registrasi Aplikasi Taaruf",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: kategoriTaaruf.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      height: 25,
                      color: Colors.pink[50],
                      child: Text(
                        "$index : ${kategoriTaaruf[index]}",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(fontSize: 16),
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
