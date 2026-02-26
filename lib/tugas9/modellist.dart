import 'package:flutter/material.dart';
import 'models/datataaruf_models.dart'; // import the generated model

class TugasModelList extends StatelessWidget {
  const TugasModelList({Key? key}) : super(key: key);

  final String _dummyJson = '''
  {
    "users": [
      {
        "nama": "Rosalina",
        "umur": 22,
        "jenis_kelamin": "Perempuan",
        "pekerjaan": "Mahasiswa",
        "deskripsi": "Suka membaca",
        "gambar": "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2024/12/13/3376815010.jpg"
      },
      {
        "nama": "Mulyana",
        "umur": 28,
        "jenis_kelamin": "Laki-laki",
        "pekerjaan": "Programmer",
        "deskripsi": "Gemar ngoding",
        "gambar": "https://akcdn.detik.net.id/community/media/visual/2021/01/05/cha-eunwoo-5_169.jpeg?w=500&q=90"
      },
      {
        "nama": "Shinta",
        "umur": 30,
        "jenis_kelamin": "Perempuan",
        "pekerjaan": "Guru",
        "deskripsi": "Menyukai Anak Kecil",
        "gambar": "https://images.unsplash.com/photo-1650462167170-4cba33f8a24a?q=80&w=627&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "nama": "Wahyu",
        "umur": 35,
        "jenis_kelamin": "Laki-laki",
        "pekerjaan": "Barista",
        "deskripsi": "Gemar minum kopi",
        "gambar": "https://6.soompi.io/wp-content/uploads/image/20250618163122_Ju-Haknyeon.jpg?s=900x600&e=t"
      },
      {
        "nama": "Dira",
        "umur": 27,
        "jenis_kelamin": "Perempuan",
        "pekerjaan": "Florist",
        "deskripsi": "Menyukai Bunga",
        "gambar": "https://akcdn.detik.net.id/visual/2019/10/23/e6a7e577-9972-4523-af26-29fe6532b684_169.jpeg?w=900&q=80"
      },
      {
        "nama": "Rudi",
        "umur": 28,
        "jenis_kelamin": "Laki-laki",
        "pekerjaan": "Programmer",
        "deskripsi": "Gemar ngoding",
        "gambar": "https://akcdn.detik.net.id/community/media/visual/2021/01/05/cha-eunwoo-5_169.jpeg?w=500&q=90"
      },
      {
        "nama": "Dony",
        "umur": 31,
        "jenis_kelamin": "Laki-laki",
        "pekerjaan": "Pelatih",
        "deskripsi": "Gemar jalan-jalan",
        "gambar": "https://apollo-magazine.com/wp-content/uploads/2022/09/web-lead_40U40_202238.jpg?w=1000"
      },
      {
        "nama": "Abi",
        "umur": 25,
        "jenis_kelamin": "Laki-laki",
        "pekerjaan": "Kuli Bangunan",
        "deskripsi": "Gemar angkat beban",
        "gambar": "https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSGgipjsVN9AD8FJOp6znzLfmyGgXaU-3hsI1V-Tl_tfdww_I7wPebxez89CprKzdLedV-WllX-ga8Ml4c"
      },
      {
        "nama": "Calista",
        "umur": 38,
        "jenis_kelamin": "Perempuan",
        "pekerjaan": "Baker",
        "deskripsi": "Gemar makan makanan manis",
        "gambar": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/69/2025/02/25/Screenshot_20250225_094322_Instagram-1818519266.jpg"
      },
      {
        "nama": "Ayu",
        "umur": 28,
        "jenis_kelamin": "Perempuan",
        "pekerjaan": "Penari",
        "deskripsi": "Senang Berolahraga",
        "gambar": "https://as1.ftcdn.net/v2/jpg/04/15/75/44/1000_F_415754491_7J1WcDMnYF8x0DRrrq7EQN4hYunPornl.jpg"
      }
    ]
  }
  ''';

  @override
  Widget build(BuildContext context) {
    final welcome = welcomeFromJson(_dummyJson);
    final users = welcome.users ?? [];

    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 600,
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
                    "Data Registrasi Aplikasi Taaruf",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return ListTile(
                      leading: user.gambar != null
                          ? Image.network(
                              user.gambar!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            )
                          : const Icon(Icons.person),
                      title: Text(
                        user.nama ?? 'Hamba Allah',
                        style: TextStyle(fontSize: 11),
                      ),
                      subtitle: Text(
                        '${user.umur ?? '-'} tahun · ${user.pekerjaan ?? '-'}',
                        style: TextStyle(fontSize: 7),
                      ),
                      onTap: () {},
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
