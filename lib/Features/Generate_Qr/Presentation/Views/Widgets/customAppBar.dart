import 'package:flutter/material.dart';
import 'package:qr_code/Core/Widgets/settings_icon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Generate Qr",
          style: TextStyle(color: Colors.white, fontSize: 27),
        ),
        Spacer(),
        Settings_Icon(),
      ],
    );
  }
}

