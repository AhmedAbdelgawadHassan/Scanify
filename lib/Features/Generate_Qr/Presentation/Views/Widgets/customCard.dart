import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Features/Generate_Qr/Data/Models/CardClass.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key, required this.cardclass});
  final Cardclass cardclass;
  @override
  Widget build(BuildContext context) {
    var widthscreen = MediaQuery.of(context).size.width;
    var heightscreen = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: cardclass.onPressed,
      child: Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        width: widthscreen * 0.26,
        height: heightscreen * 0.098,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.white, blurRadius: 7.5)],
        ),
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: cardclass.onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(cardclass.image),
              SizedBox(height: 7),
              FittedBox(
                child: Text(
                  cardclass.Text,

                  style: TextStyle(color: AppColors.primaryColor,fontSize: 13,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
