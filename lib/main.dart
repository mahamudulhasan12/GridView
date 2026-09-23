import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:grid_view_practrice/view/local%20stroge/add_or_edit_screen.dart';
import 'package:grid_view_practrice/view/local%20stroge/home_screen.dart';
import 'package:grid_view_practrice/view/widget%20practrice/switch_screen.dart';

// import 'package:grid_view_practrice/switch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode =ThemeMode.light;
  void _toggleTheme(){
    setState(() {
      _themeMode =_themeMode ==ThemeMode.light ?ThemeMode.dark :ThemeMode.light ;
    });
  }
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode:_themeMode,
      home: HomeScreen(),
    );
  }
}



