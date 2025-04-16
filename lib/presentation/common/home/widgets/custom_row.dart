import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final double spacing;
  final List<Widget> children;
  const CustomRow({super.key, required this.children, this.spacing = 0.0});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}
