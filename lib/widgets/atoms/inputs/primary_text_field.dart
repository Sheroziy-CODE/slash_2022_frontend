import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final TextInputType textInputType;
  final String hintText;
  final bool obscureText;

  PrimaryTextField(
      {this.textInputType = TextInputType.emailAddress,
      this.hintText = 'type...',
      this.obscureText = false,
      super.key});

  final roundedCornerBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: textInputType,
      style: const TextStyle(fontSize: 20, color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusedBorder: roundedCornerBorder,
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromRGBO(255, 255, 255, 50)),
        filled: true,
        alignLabelWithHint: false,
        border: roundedCornerBorder,
        fillColor: const Color(0xFF155347),
        focusColor: Colors.transparent,
        floatingLabelAlignment: FloatingLabelAlignment.center,
      ),
    );
  }
}
