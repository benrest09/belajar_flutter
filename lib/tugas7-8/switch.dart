import 'package:flutter/material.dart';

class TugasSwitch extends StatefulWidget {
  const TugasSwitch({super.key});

  @override
  State<TugasSwitch> createState() => _TugasSwitchState();
}

class _TugasSwitchState extends State<TugasSwitch> {
  bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onOff
          ? Colors.black
          : Color.fromARGB(255, 251, 219, 244),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Silahkan Pilih Tema:",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: onOff ? Colors.white : Colors.black,
              ),
            ),
          ),
          Switch(
            value: onOff,
            onChanged: (value) {
              setState(() {
                onOff = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
