import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LetStartButton extends StatelessWidget {
  const LetStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Color(0x80FDB623),
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            Color(0xFFFDB623), 
            Color(0xFFB9770E),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () => context.go('/root'),
        splashColor: Colors.white24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Let's Start",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
         const Gap(20),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(6),
              child: const Icon(
                Icons.arrow_forward,
                color: Color(0xFFB9770E),
                size: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
