import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';

class Letstartbutton extends StatelessWidget {
  const Letstartbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 190, 122, 122),
            offset: Offset(3, 5),
            blurRadius: 10
            ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),

      child: MaterialButton(
        height: 55,
        color: AppColors.secondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
                      "Let's Start",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 55),
                 Icon(
                  Icons.arrow_forward,
                  color: AppColors.primaryColor,
                  size: 30,
                ),
          ],
        ),
               
        onPressed: (){
          context.go('/Onboarding2');
        }),
    );
  }
}
