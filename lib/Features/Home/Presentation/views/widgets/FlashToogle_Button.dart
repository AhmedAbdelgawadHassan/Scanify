import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class FlashToogle_Button extends StatelessWidget {
  const FlashToogle_Button({
    super.key,
    required this.cameraController,
  });

  final MobileScannerController cameraController;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      icon: ValueListenableBuilder(
        valueListenable: cameraController.torchState,
        builder: (context, state, child) {
          switch (state) {
            case TorchState.off:
              return const Icon(Icons.flash_off);
            case TorchState.on:
              return const Icon(Icons.flash_on);
          }
        },
      ),
      onPressed: () => cameraController.toggleTorch(),
    );
  }
}