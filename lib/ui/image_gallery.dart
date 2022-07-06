import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/actorInfo_screen.dart';

class ImageGallery extends StatelessWidget {
  final double widthImage;
  final String Image_URL;

  const ImageGallery({
    Key? key,
    required this.widthImage,
    required this.Image_URL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontStyle1 = TextStyle(
      fontWeight: FontWeight.bold,
    );
    const fontStyle2 = TextStyle(
        fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 12);

    return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image(image: NetworkImage(Image_URL), width: widthImage));
  }
}
