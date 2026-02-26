// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  List<User>? users;

  Welcome({this.users});

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    users: json["users"] == null
        ? []
        : List<User>.from(json["users"]!.map((x) => User.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "users": users == null
        ? []
        : List<dynamic>.from(users!.map((x) => x.toJson())),
  };
}

class User {
  String? nama;
  int? umur;
  String? jenisKelamin;
  String? pekerjaan;
  String? deskripsi;
  String? gambar;

  User({
    this.nama,
    this.umur,
    this.jenisKelamin,
    this.pekerjaan,
    this.deskripsi,
    this.gambar,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    nama: json["nama"],
    umur: json["umur"],
    jenisKelamin: json["jenis_kelamin"],
    pekerjaan: json["pekerjaan"],
    deskripsi: json["deskripsi"],
    gambar: json["gambar"],
  );

  Map<String, dynamic> toJson() => {
    "nama": nama,
    "umur": umur,
    "jenis_kelamin": jenisKelamin,
    "pekerjaan": pekerjaan,
    "deskripsi": deskripsi,
    "gambar": gambar,
  };
}
