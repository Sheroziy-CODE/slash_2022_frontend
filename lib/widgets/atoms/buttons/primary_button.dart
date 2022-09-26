import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String btnText;
  final GestureTapCallback? onTap;

  const PrimaryButton({required this.btnText, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          btnText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, color: Colors.green),
        ),
      ),
    );
  }
}
