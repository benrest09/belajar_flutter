import 'package:flutter/material.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 169, 192),
        title: Text("PPKD Jakarta Pusat"),
        centerTitle: true,
        actions: [Text("Batch 5")],
      ),
      body: Text("Halo, Aku Bening"),
      backgroundColor: Color(0xFFD9F5FF),
    );
  }
}
