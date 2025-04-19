import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Settinigsitem extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;

   Settinigsitem({super.key, required this.image, required this.title, required this.subtitle});

  @override
  State<Settinigsitem> createState() => _SettinigsitemState();
}

class _SettinigsitemState extends State<Settinigsitem> {
  bool isSwitched = false; 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      tileColor: AppColors.secondaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      leading: SvgPicture.asset(widget.image),
      title: Text(
        "${widget.title}",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        "${widget.subtitle}",
        style: TextStyle(color: Colors.white),
      ),
      trailing: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },

        activeColor: AppColors.primaryColor,
        inactiveThumbColor: Color(0xffA5A5A5),
        activeTrackColor: Color(0xff68552F),
        inactiveTrackColor: Color(0xff4C4C4C),
      ),
    );
  }
}
