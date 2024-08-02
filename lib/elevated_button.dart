import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color buttonColor;
  final Color? buttonBorderColor;
  final String buttonText;
  final TextStyle? buttonTextColor;
  final double? buttonHeight;
  final dynamic onPressed;

  const CustomElevatedButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    this.buttonTextColor,
    this.buttonBorderColor,
    this.buttonHeight,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight ?? 55,
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            buttonColor,
          ),
          side: WidgetStatePropertyAll(
            BorderSide(
              color: buttonBorderColor ?? Colors.white,
            ),
          ),
          elevation: const WidgetStatePropertyAll(0),
        ),
        child: Text(
          buttonText,
          style: buttonTextColor ??
              Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Colors.white,
                  ),
        ),
      ),
    );
  }
}
