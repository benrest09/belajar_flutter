import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //soal nomor 1
          title: Text(
            'Profil Saya',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 234, 166, 189),
        ),

        //soal nomor 2
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/bening.jpg"),
              ),
              SizedBox(height: 20),
              Text(
                'Bening Restu A.',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Umur',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '21 Tahun',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    children: [
                      Text(
                        'Pendidikan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Teknik Informatika',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                ],
              ),

              //soal nomor 3 dan 4
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 203, 242),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 226, 16, 153),
                          size: 20,
                        ),
                        Spacer(),
                        SizedBox(width: 16),
                        Text(
                          'beningrestuadiningsih09@gmail.com',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 203, 242),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_city,
                          color: Color.fromARGB(255, 226, 16, 153),
                          size: 20,
                        ),
                        Spacer(),
                        SizedBox(width: 16),
                        Text('Jakarta Timur', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 203, 242),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: Color.fromARGB(255, 226, 16, 153),
                          size: 20,
                        ),
                        Spacer(),
                        SizedBox(width: 16),
                        Text('089603206602', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color.fromARGB(255, 255, 203, 242),
                      child: Text("Ipk: 3,5"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Color.fromARGB(255, 255, 203, 242),
                      child: Text("Jumlah SKS: 53"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Mahasiswa teknik informatika yang sedang melakukan pelatihan di ppkd jakarta pusat",
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    letterSpacing: 0.3,
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/zawj.jpeg'),
                  ),
                  color: Color.fromARGB(255, 255, 245, 248),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
