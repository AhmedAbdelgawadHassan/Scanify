  // 🔹 Function to Create Circular Decorations
  import 'dart:ui';

import 'package:flutter/material.dart';

Widget buildCircle(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color.fromARGB(255, 96, 95, 95), width: 2),
        
        color: color,
      ),
    );
  }
