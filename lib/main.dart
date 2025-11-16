// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:scanify/features/onboarding/views/splash_view.dart';

void main ()
{
  runApp(Scanify());  // Scanify → من Scan + Simplify
}


class Scanify extends StatelessWidget {
  const Scanify({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       home: SplashView(),
    );
    
  }
}