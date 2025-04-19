import 'package:flutter/material.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/GridView_Cards.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/customAppBar.dart';


class GenerateView extends StatelessWidget {
  const GenerateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // put scaffold inside container to give it's backgraound multi color
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff505050),
            Color(0xff525252),
          ], // Multi-color gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent, // Make the Scaffold transparent
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: Column(
              children: [
                Customappbar(),
                SizedBox(height: 55),
                Gridview_Cards()

              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
