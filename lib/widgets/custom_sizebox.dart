import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {
  final double? height;
  final double? width;

  const CustomSizeBox({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: height,
        width: width,
      );
}
