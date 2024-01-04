import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';

class SplashScreenThreeScreen extends StatelessWidget {
  const SplashScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 50.h,
            vertical: 233.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 53,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup34010,
                    height: 100.v,
                    width: 124.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 27.v,
                      bottom: 22.v,
                    ),
                    child: Text(
                      "Stylish",
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 46,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSettingsWhiteA70001,
                height: 18.v,
                width: 42.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
