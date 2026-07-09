

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool isdarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Themes Mode",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          SizedBox(
            width: 80,
            child: FlutterSwitch(
              height: 40,
              width: 50,
              toggleColor: Colors.white,
              borderRadius: 20,
              value: isdarkMode,
              onToggle: (value){

                setState(() {
                  value = isdarkMode;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
