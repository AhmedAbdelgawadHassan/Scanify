import 'package:flutter/material.dart';

class Customappbarcard extends StatelessWidget {
  const Customappbarcard({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
      // Arrowbackicon(),
      SizedBox(width: 30,),
      Text("$text", style: TextStyle(color: Colors.white, fontSize: 27),),


      ],
    );
  }
}