import 'package:flutter/material.dart';
import 'package:app/ui/shared/base_button.dart';

class IconButton extends StatelessWidget implements BaseButton {
  IconButton(
      {Key? key,
      required this.icon,
      Color? this.mainColor,
      Color? this.fontColor,
      bool this.disabled = false,
      double? this.radius = 30.0,
      bool this.rounded = false,
      Color? this.borderColor})
      : super(key: key);
  @override
  String? buttonText;

  @override
  bool? disabled;

  @override
  Color? fontColor;

  @override
  IconData? icon;

  @override
  Color? mainColor;

  @override
  double? radius;

  @override
  bool? rounded;
  @override
  Color? borderColor;
  @override
  Widget build(BuildContext context) {
    final screenRatio = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        disabled! ? null : print('Button');
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ??
                (mainColor ?? Theme.of(context).colorScheme.primary),
          ),
          shape: rounded! ? BoxShape.circle : BoxShape.rectangle,
          color: disabled!
              ? Theme.of(context).disabledColor
              : (mainColor ?? Theme.of(context).colorScheme.primary),
          borderRadius: rounded!
              ? null
              : BorderRadius.all(
                  Radius.circular(radius!),
                ),
        ),
        width: screenRatio.width * 0.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: fontColor ?? Theme.of(context).colorScheme.onPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
