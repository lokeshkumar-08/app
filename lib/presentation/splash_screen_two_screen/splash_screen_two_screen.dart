import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  const SplashScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 24.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 84.v),
              CustomImageView(
                imagePath: ImageConstant.imgFashionShopRafiki,
                height: 300.adaptSize,
                width: 300.adaptSize,
              ),
              SizedBox(height: 14.v),
              Text(
                "Choose Products",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 338.h,
                child: Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallGray50003.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 10.v,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 6.v,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 10,
                          activeDotColor: appTheme.blueGray90001,
                          dotColor: appTheme.blueGray90001.withOpacity(0.2),
                          dotHeight: 10.v,
                          dotWidth: 10.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 85.h),
                      child: Text(
                        "Next",
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 24.v,
      title: Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "1",
                style: CustomTextStyles.titleMediumSemiBold,
              ),
              TextSpan(
                text: "/3",
                style: CustomTextStyles.titleMediumGray500,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "Skip",
          margin: EdgeInsets.only(
            left: 17.h,
            top: 1.v,
            right: 17.h,
          ),
        ),
      ],
    );
  }
}
