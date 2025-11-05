// ignore_for_file: use_build_context_synchronously, use_super_parameters
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Core/utils/App_Assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
 void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      context.go('/Onboarding1');      // contect.go --> Doesn't return to a previous page    // Gorouter.of(contect).Push(/id) ---> Return to a previous page 
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
      child: SvgPicture.asset(AppAssets.logo1)    // Image for Application Logo   (SVG image)
      ));
  }
}
