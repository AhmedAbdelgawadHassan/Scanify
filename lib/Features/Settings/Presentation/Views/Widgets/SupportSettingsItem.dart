import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Supportsettingsitem extends StatelessWidget {
    final String image;
  final String title;
  final String subtitle;

  const Supportsettingsitem({super.key, required this.image, required this.title, required this.subtitle});




  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      tileColor: AppColors.secondaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      leading: SvgPicture.asset(image),
      title: Text(
        "$title",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        "$subtitle",
        style: TextStyle(color: Colors.white),
      ),
     
    );
  }
}
