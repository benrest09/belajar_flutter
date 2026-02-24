import 'package:flutter/material.dart';

class TugasTimePick extends StatefulWidget {
  const TugasTimePick({super.key});

  @override
  State<TugasTimePick> createState() => _TugasTimePickState();
}

class _TugasTimePickState extends State<TugasTimePick> {
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Silahkan Pilih Jam",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(selectedTime.toString()),

            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (picked != null) {
                  selectedTime = picked;
                  setState(() {});
                }
              },
              child: Text("Pilih jam"),
            ),
          ],
        ),
      ),
    );
  }
}
