import 'package:flutter/material.dart';
class RoundedImage extends StatelessWidget {
  final String imagePath;
  final Size size;

  const RoundedImage({
    Key,
    required this.imagePath,
    this.size = const Size.fromWidth(120.0),
  }) :super (key:Key);
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imagePath,
        width: size.width,
        height: size.width,
        fit:BoxFit.fitWidth,
      ),
    );
  }
}
