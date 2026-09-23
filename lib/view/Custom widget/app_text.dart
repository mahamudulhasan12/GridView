import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key, required this.text, this.fontSize, this.fontWeight, this.textOverflow, this.color,
  });
  final String text;
  final double ?fontSize;
  final FontWeight ? fontWeight;
  final TextOverflow ? textOverflow;
  final Color ? color;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color:color ,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight,
      overflow: textOverflow,
    ),);
  }
}
