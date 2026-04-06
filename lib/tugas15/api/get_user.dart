import 'dart:convert';
import 'dart:developer';
import 'package:find_my_zawj/tugas10/database/preferences.dart';
import 'package:find_my_zawj/tugas15/api/endpoint.dart';
import 'package:find_my_zawj/tugas15/models/get_model.dart';
import 'package:http/http.dart' as http;

import '../models/register_model.dart';

// class Repository {

// }

Future<RegisterModel?> registerUser({
  required String name,
  required String email,
  required String password,
}) async {
  final response = await http.post(
    Uri.parse(Endpoint.register),
    headers: {"Accept": "application/json"},
    body: {"name": name, "email": email, "password": password},
  );

  log(response.body);

  if (response.statusCode == 200) {
    return RegisterModel.fromJson(jsonDecode(response.body));
  } else {
    final error = RegisterModel.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>?,
    );
    log(error.toString());

    throw Exception(error.message ?? 'Register gagal');
  }
}

Future<GetUserModel?> getUser() async {
  final token = await PreferenceHandler.getToken();
  if (token == null || token.isEmpty) {
    throw Exception('Token tidak tersedia');
  }

  final response = await http.get(
    Uri.parse(Endpoint.profile),
    headers: {
      "Accept": "application/json",
      "Authorization": "Bearer $token",
    },
  );

  log(response.body);

  if (response.statusCode == 200 || response.statusCode == 201) {
    return GetUserModel.fromJson(json.decode(response.body));
  } else {
    final body = json.decode(response.body) as Map<String, dynamic>?;
    final error = GetUserModel.fromJson(body ?? {});
    log(error.toString());

    throw Exception(error.message ?? 'Gagal mengambil data profil');
  }
}

Future<RegisterModel?> loginUser({
  required String email,
  required String password,
}) async {
  final response = await http.post(
    Uri.parse(Endpoint.login),
    headers: {"Accept": "application/json"},
    body: {"email": email, "password": password},
  );

  log(response.body);

  if (response.statusCode == 200 || response.statusCode == 201) {
    return RegisterModel.fromJson(jsonDecode(response.body));
  } else {
    final body = jsonDecode(response.body) as Map<String, dynamic>?;
    final error = RegisterModel.fromJson(body);
    throw Exception(error.message ?? 'Login gagal');
  }
}

Future<bool> updateUser({required String name, required String email}) async {
  final token = await PreferenceHandler.getToken();
  if (token == null || token.isEmpty) {
    throw Exception('Token tidak tersedia');
  }

  final response = await http.put(
    Uri.parse(Endpoint.updateProfile),
    headers: {
      "Accept": "application/json",
      "Authorization": "Bearer $token",
    },
    body: {"name": name, "email": email},
  );

  log(response.body);

  if (response.statusCode == 200) {
    return true;
  } else {
    final body = jsonDecode(response.body) as Map<String, dynamic>?;
    final errorMessage = body?['message'] as String?;
    throw Exception(errorMessage ?? 'Update profile gagal');
  }
}
