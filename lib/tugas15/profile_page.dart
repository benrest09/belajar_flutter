import 'package:flutter/material.dart';

import '../tugas10/database/preferences.dart';
import 'api/get_user.dart';
import 'edit_profile.dart';
import 'models/get_model.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<GetUserModel?> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = getUser();
  }

  void refreshProfile() {
    setState(() {
      futureUser = getUser();
    });
  }

  Future<void> logoutAction() async {
    await PreferenceHandler().deleteToken();
    await PreferenceHandler().deleteIsLogin();

    if (!mounted) return;

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: logoutAction,
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: FutureBuilder<GetUserModel?>(
        future: futureUser,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data?.data == null) {
            return const Center(child: Text("Data profile tidak ada"));
          }

          final user = snapshot.data!.data!;

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Data Profile",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ID: ${user.id ?? '-'}"),
                      const SizedBox(height: 10),
                      Text("Nama: ${user.name ?? '-'}"),
                      const SizedBox(height: 10),
                      Text("Email: ${user.email ?? '-'}"),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfilePage(
                            name: user.name ?? '',
                            email: user.email ?? '',
                          ),
                        ),
                      );

                      if (result == true) {
                        refreshProfile();
                      }
                    },
                    child: const Text("Edit Profil"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
