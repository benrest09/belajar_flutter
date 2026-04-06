import 'package:flutter/material.dart';

import '../tugas10/database/preferences.dart';
import 'login_page.dart';
import 'profile_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  Future<bool> _hasToken() async {
    final token = await PreferenceHandler.getToken();
    return token != null && token.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _hasToken(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.data == true) {
          return const ProfilePage();
        }

        return const LoginPage();
      },
    );
  }
}
