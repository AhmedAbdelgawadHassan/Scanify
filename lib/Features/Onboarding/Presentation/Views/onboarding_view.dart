import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Core/Widgets/custom_text.dart';
import 'package:qr_code/Core/utils/App_Assets.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/Widgets/LetsStartButton.dart';
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;  // get the Full width of the screen
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           SvgPicture.asset("assets/Images/Intersect (3).svg",width:width,),
          SvgPicture.asset(AppAssets.logo1),
          Spacer(flex: 2,),
         Customtext(text: 'Get Started With Scanify ', fontSize: 28,),
          Spacer(flex: 1,),
          Customtext(text: "Go and enjoy our features for free and\n make your life easy with Scanify.",maxLines: 2,fontWeight: FontWeight.w600,color: Colors.white,),
          Spacer(flex: 4,),
          LetStartButton(),
          Spacer(flex: 2,),
           SvgPicture.asset("assets/Images/Intersect (4).svg",width:width,)
        ],
      ),
    );
  }
}
