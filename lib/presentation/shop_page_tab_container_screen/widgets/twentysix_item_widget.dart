import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class TwentysixItemWidget extends StatelessWidget {
  const TwentysixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgUnsplashNovnxxmdni0213x343,
        height: 213.v,
        width: 343.h,
        radius: BorderRadius.circular(
          16.h,
        ),
        margin: EdgeInsets.only(
          right: 16.h,
          bottom: 22.v,
        ),
      ),
    );
  }
}
