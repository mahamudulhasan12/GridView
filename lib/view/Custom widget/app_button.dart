import 'package:flutter/material.dart';

class AppButon extends StatelessWidget {
  const AppButon({
    super.key, required this.onPressed, required this.text, this.buttonSize,
  });
  final VoidCallback onPressed;
  final String text;
  final Size ? buttonSize;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize:buttonSize ,
        elevation: 0,
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),

      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xffFF416C), Color(0xffFF4B2B)],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          alignment: Alignment.center,
          child:  Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}