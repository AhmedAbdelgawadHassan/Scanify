import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ToogleCamera_Button extends StatelessWidget {
  const ToogleCamera_Button({super.key, required this.cameraController});

  final MobileScannerController cameraController;

  @override
 Widget build(BuildContext context) {
  return IconButton(
    color: Colors.white,
    icon: ValueListenableBuilder(
      valueListenable: cameraController.cameraFacingState,
      builder: (context, state, child) {
        // استخدام أيقونات أكثر وضوحًا للتمييز بين الحالتين
        return Icon(
          state == CameraFacing.front 
            ? Icons.flip_camera_android 
            : Icons.flip_camera_android,
          size: 30, // حجم أكبر للأيقونة
        );
      },
    ),
    onPressed: () async {
      try {
        // إضافة مؤشر تحميل أثناء التبديل
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
        
        // تبديل الكاميرا مع معالجة الأخطاء
        await cameraController.switchCamera();
        
        // إغلاق مؤشر التحميل بعد التبديل
        Navigator.of(context).pop();
      } catch (e) {
        // إغلاق مؤشر التحميل في حالة الخطأ
        Navigator.of(context).pop();
        
        // عرض رسالة خطأ للمستخدم
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('فشل في تبديل الكاميرا: ${e.toString()}'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    },
  );
}
}
