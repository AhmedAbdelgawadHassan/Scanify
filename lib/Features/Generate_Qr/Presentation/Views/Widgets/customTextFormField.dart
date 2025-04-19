// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield({
    super.key,
    required this.label,
    required this.hintText,
    required this.maxLines,
      required this.ScreenRatio,
  });
  final String label;
  final String hintText;
  final int maxLines;
  final double ScreenRatio;
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$label", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w300)),
        SizedBox(height: 5),
        SizedBox(
          width: widthScreen*ScreenRatio,    // width of textfield related to container width (Responsive)
          child: TextFormField(
            minLines: 1,
            maxLines: maxLines,
            cursorColor: AppColors.primaryColor,
            autofocus: true,
            style: TextStyle(
              letterSpacing: 0.3,
              color: const Color.fromARGB(255, 223, 221, 221),
              fontSize: 17,
              fontFamily: "Arial",
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(  
              filled: true,
              fillColor: Color(0xff363636),
              contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              hintText: "$hintText",
              hintStyle: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white, width: 0.6),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 0.7,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
