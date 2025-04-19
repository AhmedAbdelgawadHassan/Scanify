// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/GenerateQr_Buttom.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/customTextFormField.dart';

class TextfieldcardContainer extends StatelessWidget {
  const TextfieldcardContainer({super.key, required this.label, required this.hintText,required  this.maxLines,  this.ScreenRatio=0.65, required this.GenerateQr_Onpressed, required this.image});
  final String label ;
  final String hintText;
  final int maxLines;
  final double ScreenRatio;
  final VoidCallback GenerateQr_Onpressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Container(
      width: widthScreen * 0.8,
      height: heightScreen * 0.43,
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
          SvgPicture.asset(image,height: 60,),
          Spacer(flex: 2,),
          Customtextformfield(label: "$label", hintText: "$hintText", maxLines: maxLines,ScreenRatio: ScreenRatio,),
          Spacer(flex: 3,),
          GenerateqrButtom(onpressed: GenerateQr_Onpressed,),
          Spacer(flex: 3,)

        ],
      ),
    );
  }
}
