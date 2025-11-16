import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  const Customtext({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.maxLines, 
     this.height,
      this.textAlign,
       this.wordSpacing,
  });
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final int? maxLines;
  final double? height;
  final TextAlign? textAlign;
  final double? wordSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
     textAlign: textAlign??TextAlign.center,
      style: TextStyle(
        color: color ?? Colors.black,
        overflow: TextOverflow.ellipsis,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w600,
        height:height??0,
        wordSpacing: wordSpacing??0,
      
        
      
      ),
    );
  }
}
