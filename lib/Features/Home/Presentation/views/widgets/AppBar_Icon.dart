import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({super.key, required this.OnPressed, required this.icon});
  final VoidCallback OnPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPressed,
      child: SvgPicture.asset(icon),);
  }
}

