import 'dart:convert';
import 'dart:developer';
import 'package:find_my_zawj/tugas14/harry_model.dart';
import 'package:http/http.dart' as http;

Future<List<Welcome>> getCharacters() async {
  final response = await http.get(
    Uri.parse("https://hp-api.onrender.com/api/characters"),
  );

  log(response.body);
  if (response.statusCode == 200) {
    final List<dynamic> chara = json.decode(response.body);
    return chara.map((json) => Welcome.fromJson(json)).toList();
  } else {
    throw Exception("Gagal Memuat Data");
  }
}
