import 'package:find_my_zawj/tugas10/homepage.dart';
import 'package:find_my_zawj/tugas10/view/login.dart';

import 'package:flutter/material.dart';

import '../database/preferences.dart';
import '../extention/navigator.dart' show ExtendedNavigator;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    autoLogin();
  }

  void autoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    bool? data = await PreferenceHandler.getIsLogin();
    print("halo bening");
    if (data == true) {
      context.pushAndRemoveAll(HomePage());
    } else {
      context.pushAndRemoveAll(LoginPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('assets/icons/zawj.png')],
      ),
    );
  }
}
