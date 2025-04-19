// ignore_for_file: unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:qr_code/Features/Home/Presentation/views/widgets/AppBar_Icon.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff292929),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: Colors.white, blurRadius: 5)],
                ),
                child: Row(
                  children: [
                    Spacer(),
                    AppbarIcon(
                      OnPressed: () {},
                      icon: "assets/Images/clarity_image-gallery-solid.svg",
                    ),
                    Spacer(flex: 3),
                    AppbarIcon(
                      OnPressed: () {},
                      icon: "assets/Images/Vector (41).svg",
                    ),
                    Spacer(flex: 3),
                    AppbarIcon(
                      OnPressed: () {},
                      icon:
                          "assets/Images/material-symbols_flip-camera-ios.svg",
                    ),
                    Spacer(),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // controller?.dispose(); // dispose the controller
    super.dispose();
  }
}