import 'package:flutter/material.dart';
import '../styleguide/colors.dart';
class OpaqueImage extends StatelessWidget {
  final imageUrl;

  const OpaqueImage ({ Key, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Image.asset(
      imageUrl,
      width: double.maxFinite,
      height: double.maxFinite,
      fit: BoxFit.fill,
    ),
        Container(
          color: primaryColorOpacity.withOpacity(0.85),

        ),
      ],

    );



  }
}
