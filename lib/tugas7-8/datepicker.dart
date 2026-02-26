import 'package:flutter/material.dart';

class TugasDatePick extends StatefulWidget {
  const TugasDatePick({super.key});

  @override
  State<TugasDatePick> createState() => _TugasDatePickState();
}

class _TugasDatePickState extends State<TugasDatePick> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Silahkan Pilih Tanggal",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            Text(selectedDate.toString()),
            ElevatedButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2030),
                  initialDate: DateTime.now(),
                );
                if (picked != null) {
                  selectedDate = picked;
                  setState(() {});
                }
              },
              child: Text("Pilih Tanggal"),
            ),
          ],
        ),
      ),
    );
  }
}
