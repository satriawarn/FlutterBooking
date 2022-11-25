import 'package:booking_aja/data/src/img_string.dart';
import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Image.asset(ImgString.coffeeShop),
    );
  }
}
