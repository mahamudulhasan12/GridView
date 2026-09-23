import 'package:flutter/material.dart';

import '../Custom widget/app_text.dart';

class AddOrEditScreen extends StatefulWidget {
  const AddOrEditScreen({super.key});

  @override
  State<AddOrEditScreen> createState() => _AddOrEditScreenState();
}

class _AddOrEditScreenState extends State<AddOrEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(text: 'Local St',fontSize: 20,fontWeight: FontWeight.bold,),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [

        ],
      ),
    );
  }
}

