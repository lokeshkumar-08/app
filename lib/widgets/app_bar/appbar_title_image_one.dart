import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleImageOne extends StatelessWidget {
  AppbarTitleImageOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder1,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 19.v,
          width: 9.h,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            1.h,
          ),
        ),
      ),
    );
  }
}
