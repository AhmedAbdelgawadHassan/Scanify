import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Core/utils/App_Assets.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/Widgets/LetsStartButton.dart';
class Onboarding1View extends StatelessWidget {
  const Onboarding1View({super.key});
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           SvgPicture.asset("assets/Images/Intersect (3).svg",width:width,),
          SvgPicture.asset(AppAssets.logo1),
          Spacer(flex: 2,),
          Text("Get Started", style: TextStyle(fontSize: 45)),
          Spacer(flex: 1,),
          Text(
            "Go and enjoy our features for free and\n make your life easy with us.",
            style: TextStyle(
                fontFamily: 'Itim',
                fontSize: 17,
                fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 4,),
          Letstartbutton(),
          Spacer(flex: 2,),
           SvgPicture.asset("assets/Images/Intersect (4).svg",width:width,)
        ],
      ),
    );
  }
}
