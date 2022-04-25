import 'package:flutter/material.dart';
import 'package:app/ui/shared/base_button.dart';

class Button extends StatelessWidget implements BaseButton {
  Button(
      {Key? key,
      required String this.buttonText,
      bool this.disabled = false,
      Color? this.mainColor,
      Color? this.fontColor,
      Color? this.borderColor,
      double? this.radius = 10.0,
      IconData? this.icon})
      : super(key: key);

  @override
  bool? disabled;
  @override
  double? radius;
  @override
  String? buttonText;
  @override
  Color? fontColor;
  @override
  Color? mainColor;
  @override
  IconData? icon;
  @override
  bool? rounded;
  @override
  Color? borderColor;
  @override
  Widget build(BuildContext context) {
    final screenRatio = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        disabled! ? print('Button') : null;
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
              color: borderColor ??
                  (mainColor ?? Theme.of(context).colorScheme.primary)),
          color: disabled!
              ? Theme.of(context).disabledColor
              : (mainColor ?? Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.all(
            Radius.circular(radius!),
          ),
        ),
        width: screenRatio.width * 0.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: icon != null,
              child: Icon(
                icon,
                color: fontColor ?? Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              buttonText!,
              style: TextStyle(
                  color: fontColor ?? Theme.of(context).colorScheme.onPrimary,
                  fontSize: 18,
                  letterSpacing: 2),
            ),
          ],
        ),
      ),
    );
  }
}
