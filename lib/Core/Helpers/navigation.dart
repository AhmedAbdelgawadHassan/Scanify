import 'package:flutter/material.dart';

void navigationTool (BuildContext context ,Widget widget)
{
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget,));
}