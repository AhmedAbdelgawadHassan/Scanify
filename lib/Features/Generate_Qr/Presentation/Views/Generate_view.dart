// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/GridView_Cards.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/customAppBar.dart';

class GenerateView extends StatelessWidget {
  const GenerateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1A1A1A), 
            Color(0xFF2E2E2E), 
            Color(0xFFFDB623),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Customappbar(),
                const SizedBox(height: 40),
                 // cards gridview
                 Expanded(child: Gridview_Cards()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
