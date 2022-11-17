import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IcButton extends StatelessWidget {
  final FaIcon icon;
  final double iconSize;
  final void Function()? onPressed;

  const IcButton(
      {super.key,
      required this.icon,
      required this.iconSize,
      required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      child: IconButton(
        icon: icon,
        iconSize: iconSize,
        color: Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}