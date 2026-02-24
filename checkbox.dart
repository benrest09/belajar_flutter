import 'package:flutter/material.dart';

class TugasCheckbox extends StatefulWidget {
  const TugasCheckbox({super.key});

  @override
  State<TugasCheckbox> createState() => _TugasCheckboxState();
}

class _TugasCheckboxState extends State<TugasCheckbox> {
  bool _ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Silahkan Klik Untuk Melanjutkan",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _ischeck,
                  onChanged: (value) {
                    _ischeck = value ?? false;
                    setState(() {});
                  },
                ),
                Text(
                  " ${_ischeck ? "Saya Setuju" : "Tidak Setuju"} dengan Syarat & Ketentuan",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
