// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Settings_Icon extends StatelessWidget {
  const Settings_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/Settings');
      },
      child: Container(
        width: 45,
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 26, 25, 25),
              offset: Offset(2, 2),
              blurRadius: 15,
            ),
          ],
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Icon(Icons.settings, color: AppColors.primaryColor, size: 25),
      ),
    );
  }
}
