import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Assets.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/ArrowBackIcon.dart';
import 'package:qr_code/Features/Settings/Presentation/Views/Widgets/SettinigsItem.dart';
import 'package:qr_code/Features/Settings/Presentation/Views/Widgets/SupportSettingsItem.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff525252),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrowbackicon(),
              SizedBox(height: 50),
              Text(
                "Settings",
                style: TextStyle(color: AppColors.primaryColor, fontSize: 26),
              ),
              SizedBox(height: 20,),
              Settinigsitem(image: AppAssets.Virate, title: "Vibrate", subtitle: 'Vibration when scan is done.'),
              SizedBox(height: 15,),
              Settinigsitem(image: AppAssets.BeepIcon1, title: "Beep", subtitle: 'Beep when scan is done.'),
              SizedBox(height: 50,),
              Text(
                "Support",
                style: TextStyle(color: AppColors.primaryColor, fontSize: 26),
              ),
              SizedBox(height: 20,),
              Supportsettingsitem(image: AppAssets.RateUsIcon1, title: "Rate Us", subtitle: "Your best reward to us."),
              SizedBox(height: 5,),
              Supportsettingsitem(image: AppAssets.ShareIcon1, title: "Share", subtitle: "Share App With Others."),
              SizedBox(height: 5,),
              Supportsettingsitem(image: AppAssets.PrivacyPolicyIcon1, title: "Privacy Policy", subtitle: "Follow our policies that benefits you."),
            ]
          ),
        ),
      ),
    );
  }
}
