import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String? fontType;
  final double? textSize;
  final double? borderSize;
  final Widget function;
  final Color color;
  final String text;

  const CustomButton({
    Key? key,
    required this.color,
    required this.text,
    this.textSize,
    this.fontType,
    this.borderSize,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => function));
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 12.w),
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.r),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: fontType,
          fontSize: textSize,
        ),
      ),
    );
  }
}
