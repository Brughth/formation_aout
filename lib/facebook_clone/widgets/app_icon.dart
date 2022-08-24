import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  AppIcon({
    Key? key,
    required this.icon,
    this.iconColor = Colors.black,
    this.backColor = Colors.blueGrey,
  }) : super(key: key);
  final IconData icon;
  final Color iconColor;
  final Color backColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: backColor.withOpacity(.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
