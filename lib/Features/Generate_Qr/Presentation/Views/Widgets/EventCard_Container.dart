// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Core/utils/App_Assets.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/GenerateQr_Buttom.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/customTextFormField.dart';

class EventcardContainer extends StatelessWidget {
  const EventcardContainer({super.key, required this.GenerateQr_Onpressed});
  final VoidCallback GenerateQr_Onpressed;



  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Container(
      width: widthScreen * 0.8,
      height: heightScreen * 0.80,
      decoration: BoxDecoration(
        color: Color.fromARGB(128, 39, 39, 40),
        borderRadius: BorderRadius.circular(12),
        border: Border.symmetric(
          horizontal: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
      ),
      child: Column(
        children: [
          Spacer(flex: 2,),
          SvgPicture.asset(AppAssets.EventIcon1,height: 60,),
          Spacer(flex: 2,),
          Customtextformfield(
             onFieldSubmitted: (value){},
            label: "Event Name", hintText: "Enter Name", maxLines: 1,ScreenRatio: 0.65,),
          Spacer(flex: 2,),
          Customtextformfield(
             onFieldSubmitted: (value){},
            label: "Start Date and Time", hintText: "12 Dec 2022, 10:40 pm", maxLines: 1,ScreenRatio: 0.65,),
          Spacer(flex: 2,),
          Customtextformfield(
             onFieldSubmitted: (value){},
            label: "End Date and Time", hintText: "12 Dec 2022, 10:40 pm", maxLines: 1,ScreenRatio: 0.65,),
          Spacer(flex: 2,),
         Customtextformfield(
           onFieldSubmitted: (value){},
          label: "Event Location", hintText: "Enter Location", maxLines: 1,ScreenRatio: 0.65,),
         Spacer(flex: 2,),
         Customtextformfield(
           onFieldSubmitted: (value){},
          label: "Description", hintText: "Enter any details", maxLines: 3, ScreenRatio: 0.65),
         Spacer(flex: 3,),
          GenerateqrButtom(onpressed: GenerateQr_Onpressed,),
          Spacer(flex: 2,)
      
      
        ],
      ),
    );
  }
}
