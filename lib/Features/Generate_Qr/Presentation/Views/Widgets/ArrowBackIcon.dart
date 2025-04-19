import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Arrowbackicon extends StatelessWidget {
  const Arrowbackicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 48,
      height: 45,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: AppColors.secondaryColor, blurRadius: 15)],
        borderRadius: BorderRadius.circular(10),
        color: AppColors.secondaryColor,
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Icon(
          Icons.arrow_back_ios,
          color: AppColors.primaryColor,
          size: 25,
        ),
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),
    );
  }
}
