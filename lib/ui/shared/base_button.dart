import 'package:flutter/material.dart';

abstract class BaseButton {
  //a boolean used to disable the button
  bool? disabled;
  //a double used to determine the border radius
  double? radius;
  // a string used to determine the main string in a button
  String? buttonText;
  // color code for the font
  Color? fontColor;
  // color code for the button background
  Color? mainColor;
  // color code for the border
  Color? borderColor;
  // an Icon
  IconData? icon;
  //a boolean used to determine if the button is rounded or rectangle
  bool? rounded;
}
