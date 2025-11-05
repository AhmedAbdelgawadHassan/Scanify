// ignore_for_file: unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code/Features/Home/Presentation/views/widgets/AppBar_Icon.dart';
import 'package:qr_code/Features/Home/Presentation/views/widgets/FlashToogle_Button.dart';
import 'package:qr_code/Features/Home/Presentation/views/widgets/ToogleCamera_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // متغير للتحكم في الماسح الضوئي
  MobileScannerController cameraController = MobileScannerController();

  // متغير لتتبع ما إذا كان الماسح يعمل
  bool _isScanning = false;

  void initState() {
    super.initState();
      cameraController = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back, // البدء بالكاميرا الخلفية
    torchEnabled: false,
  );


    // بدء التشغيل التلقائي عند فتح الصفحة
    _startScanning();

  }

  void _startScanning() {
    setState(() {
      _isScanning = true;
    });
  }

  void _stopScanning() {
    setState(() {
      _isScanning = false;
    });
  }

  @override
  void dispose() {
    // تحرير الموارد عند إغلاق الصفحة
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    FlashToogle_Button(cameraController: cameraController),
                    Spacer(flex: 3),
                    ToogleCamera_Button(cameraController: cameraController),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 500,
                child: MobileScanner(
                  controller: MobileScannerController(
                    detectionSpeed: DetectionSpeed.normal,
                    facing: CameraFacing.back,
                  ),
                  onDetect: (capture) {
                    final List<Barcode> barcodes = capture.barcodes;
                    for (final barcode in barcodes) {
                      print('Barcode found! ${barcode.rawValue}');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



