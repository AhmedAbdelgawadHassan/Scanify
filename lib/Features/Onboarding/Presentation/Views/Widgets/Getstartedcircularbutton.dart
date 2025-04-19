import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Getstartedcircularbutton extends StatelessWidget {
  const Getstartedcircularbutton({super.key, required this.ontap});
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor,
            offset: Offset(0, 0),
            blurRadius: 10,
          ),
        ],
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: ontap,
        child: Icon(Icons.arrow_forward, color: Colors.black, size: 30),
      ),
    );
  }
}
