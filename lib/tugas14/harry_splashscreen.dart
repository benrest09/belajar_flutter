import 'package:find_my_zawj/tugas14/menu_house_harry.dart';
import 'package:flutter/material.dart';

class HarrySplashscreen extends StatefulWidget {
  const HarrySplashscreen({super.key});

  @override
  State<HarrySplashscreen> createState() => _HarrySplashScreenState();
}

class _HarrySplashScreenState extends State<HarrySplashscreen> {
  @override
  void initState() {
    super.initState();
    pindahHalaman();
  }

  Future<void> pindahHalaman() async {
    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MenuHouseScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/bg_harry.jpg", fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.4)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/icons/logo_hogwarts.png",
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Hogwarts School of\n'
                  'Witchcraft and Wizardry',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Harry',
                    fontSize: 35,
                    color: Color(0xFFD4AF37),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
