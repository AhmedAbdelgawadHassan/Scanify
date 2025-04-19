// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Core/utils/App_Assets.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/GenerateQr_Buttom.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/customTextFormField.dart';

class ContactcardContainer extends StatelessWidget {
  const ContactcardContainer({super.key, required this.GenerateQr_Onpressed});
  final VoidCallback GenerateQr_Onpressed;


  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Container(
      width: widthScreen * 0.86,
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
          Spacer(),
          SvgPicture.asset(AppAssets.ContactsIcon1,height: 60,),
          Spacer(flex: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customtextformfield(label: "First Name", hintText: "Enter Name", maxLines: 1,ScreenRatio: 0.35,),
               SizedBox(width: 30,),
          Customtextformfield(label: "Last Name", hintText: "Enter Name", maxLines: 1,ScreenRatio: 0.35,),
            ],
          ),
          Spacer(),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customtextformfield(label: "Company", hintText: "Enter Company", maxLines: 1,ScreenRatio: 0.35,),
               SizedBox(width: 30,),
          Customtextformfield(label: "Job", hintText: "Enter Job", maxLines: 1,ScreenRatio: 0.35,),
            ],
          ),
          Spacer(),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customtextformfield(label: "Phone", hintText: "Enter Phone", maxLines: 1,ScreenRatio: 0.35,),
              SizedBox(width: 30,),
          Customtextformfield(label: "Email", hintText: "Enter Email", maxLines: 1,ScreenRatio: 0.35,),
            ],
          ),
          Spacer(),
          Customtextformfield(label: "Website", hintText: "Enter Website", maxLines: 1,ScreenRatio: 0.74,),
          Spacer(),
         Customtextformfield(label: "Address", hintText: "Enter Address", maxLines: 1,ScreenRatio: 0.74,),
         Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customtextformfield(label: "City", hintText: "Enter City", maxLines: 1,ScreenRatio: 0.35,),
               SizedBox(width: 30,),
          Customtextformfield(label: "Country", hintText: "Enter Country", maxLines: 1,ScreenRatio: 0.35,),
            ],
          ),
          Spacer(flex: 4,),
          GenerateqrButtom(onpressed: GenerateQr_Onpressed,),
          Spacer(flex: 2,)
      
      
        ],
      ),
    );
  }
}
