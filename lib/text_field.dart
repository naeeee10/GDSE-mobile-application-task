import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String inputFieldName;
  final IconData? inputPrefixIcon;
  final IconData? inputSuffixIcon;
  final BorderStyle? borderStyleOption;
  final double textFieldBorderRadius;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.inputFieldName,
    this.inputPrefixIcon,
    this.inputSuffixIcon,
    this.borderStyleOption,
    required this.textFieldBorderRadius,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15.0,
        right: 6,
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldBorderRadius),
            borderSide: BorderSide(
              style: borderStyleOption ?? BorderStyle.none,
              color: Colors.white,
            ),
          ),
          hintText: inputFieldName,
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          prefixIcon: Icon(
            inputPrefixIcon,
          ),
          suffixIcon: Icon(
            inputSuffixIcon,
          ),
          prefixIconColor: Colors.white,
          suffixIconColor: Colors.white,
        ),
      ),
    );
  }
}
