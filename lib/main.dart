// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Routers.dart';

void main ()
{
  runApp(Scanify());  // Scanify → من Scan + Simplify
}


class Scanify extends StatelessWidget {
  const Scanify({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(
        fontFamily: 'Itim',   // font family for all texts in all App
      ),
    );
  }
}