import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_elevated_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA70001,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA70001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup187,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: 390.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 437.v),
                _buildGetStartedSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStartedSection(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 53.h,
            vertical: 34.v,
          ),
          decoration: AppDecoration.gradientBlackToBlack,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 36.v),
              SizedBox(
                width: 280.h,
                child: Text(
                  "You want Authentic, here you go!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.displaySmallWhiteA70001,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "Find it here, buy it now!",
                style: CustomTextStyles.bodyMediumGray10003,
              ),
              SizedBox(height: 44.v),
              CustomElevatedButton(
                text: "Get Started",
                buttonTextStyle: CustomTextStyles.titleLarge23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
