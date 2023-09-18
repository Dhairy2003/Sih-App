import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconButton extends StatelessWidget {
  final String iconPath;
  final double iconSize;
  final Color iconColor;
  final VoidCallback onPressed;

  SvgIconButton({
    required this.iconPath,
    this.iconSize = 24,
    this.iconColor = Colors.black,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: iconSize,
        height: iconSize,
        color: iconColor,
      ),
    );
  }
}
