import 'package:flutter/material.dart';

class TugasDropdown extends StatefulWidget {
  const TugasDropdown({super.key});

  @override
  State<TugasDropdown> createState() => _TugasDropdownState();
}

class _TugasDropdownState extends State<TugasDropdown> {
  String? selectedDropdown;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Silahkan Pilih Warna",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 235, 230, 230),
                filled: true,
              ),
              initialValue: selectedDropdown,
              hint: Text("Pilih Warna"),
              items: ["Kuning", "Biru", "Pink"].map((String value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDropdown = value;
                });
              },
            ),
            Container(
              height: 100,
              width: 100,
              color: selectedDropdown == "Kuning"
                  ? Colors.amber
                  : selectedDropdown == "Biru"
                  ? Colors.blueAccent
                  : Color.fromARGB(255, 248, 186, 229),
            ),
          ],
        ),
      ),
    );
  }
}
