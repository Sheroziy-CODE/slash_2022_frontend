import 'package:flutter/material.dart';

class CustomToggleButtons<T> extends StatelessWidget {
  final Function(int value) onPressed;
  final List<Widget> children;
  final List<bool> isSelected;

  const CustomToggleButtons({required this.onPressed,
    required this.children,
    required this.isSelected,
    super.key});

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      direction: Axis.horizontal,
      onPressed: onPressed,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      selectedColor: Colors.green,
      fillColor: Colors.white,
      color: Colors.white,
      isSelected: isSelected,
      constraints: const BoxConstraints(
        minHeight: 60.0,
        minWidth: 180.0,
      ),
      children: children,

    );
  }
}
