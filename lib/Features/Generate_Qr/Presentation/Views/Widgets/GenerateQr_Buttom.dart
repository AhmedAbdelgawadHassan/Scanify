import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class GenerateqrButtom extends StatelessWidget {
  const GenerateqrButtom({super.key, required this.onpressed});
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.primaryColor,
      height: 50,
      minWidth: 200,
      splashColor: AppColors.secondaryColor, // color when pressed
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
     onPressed: onpressed,    // onpressed function
      child:  Text(
        "Generate QR Code",
        style: TextStyle(
          color: Color(0xff333333),
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
