import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _currentValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Screen",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),

      ),
      body: Slider(
        value: _currentValue,
        min: 0,
        max: 100,
        divisions: 100,
        label: _currentValue.round().toString(),
        activeColor: Colors.blue,
        inactiveColor: Colors.grey[300],
        onChanged: (double value) {

          setState(() {
            _currentValue = value;
          });
        },
      ),
    );
  }
}
