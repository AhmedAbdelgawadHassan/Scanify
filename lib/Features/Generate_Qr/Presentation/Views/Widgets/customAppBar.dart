import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qr_code/Core/Widgets/custom_text.dart';
import 'package:qr_code/Core/Widgets/settings_icon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Customtext(text: 'Generate Your QR Code',color: Colors.white,fontSize: 20,),
           Gap(10),
            Customtext(text: 'Pick one to generate fast',color: Colors.white30,),
          ],
        ),
        Spacer(),
        Settings_Icon(),
      ],
    );
  }
}

