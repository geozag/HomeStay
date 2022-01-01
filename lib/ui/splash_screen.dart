import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_stay/ui/home_screen.dart';
import 'package:home_stay/utils/constants.dart';
import 'package:home_stay/widgets/custom_button.dart';

import '../widgets/custom_sizebox.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 289.h,
                  width: double.infinity,
                  color: lightRedColor,
                ),
              ],
            ),
            Positioned(
              top: 300.h,
              left: 80.w,
              right: -80.w,
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: Image.asset(houseSplash),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
                vertical: 50.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    logo,
                    height: 50.h,
                    width: 50.w,
                  ),
                  CustomSizeBox(height: 30.h),
                  const Text(
                    "Find Cozy House\nto Stay and Happy",
                    style: TextStyle(
                      fontFamily: poppinsMedium,
                      fontSize: 24,
                      color: blackColor,
                    ),
                  ),
                  CustomSizeBox(height: 10.h),
                  const Text(
                    "Stop membuang banyak waktu\npada tempat yang tidak habitable",
                    style: TextStyle(
                      fontFamily: poppinsLight,
                      fontSize: 16,
                      color: greyColor,
                    ),
                  ),
                  CustomSizeBox(height: 40.h),
                  const CustomButton(
                    function: Home(),
                    color: purpleColor,
                    fontType: poppinsMedium,
                    text: 'Explore Now',
                    textSize: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
