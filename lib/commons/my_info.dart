import 'package:flutter/material.dart';
import '../styleguide/text_style.dart';
import 'rounded_image.dart';
class MyInfo extends StatelessWidget {
  const MyInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedImage(
          imagePath: "assets/images/anne.jpeg",
          size: Size.fromWidth(120.0)
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Text(
              "Nasrat Nasrati",

              style: whiteNameTextStyle,
            ),
            Text(
              ", 25",
              style: whiteNameTextStyle,
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/location_pin.png",
              width: 20.0,
              color: Colors.white,
            ),
            Text(
              "34 Kilometer",
              style: whiteSubHeadingTextStyle,
            ),
          ],
        ),
      ],
    ),
    );
  }
}
