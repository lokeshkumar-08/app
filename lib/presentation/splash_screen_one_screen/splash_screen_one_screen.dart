import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenOneScreen extends StatelessWidget {
  const SplashScreenOneScreen({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSalesConsultingPana,
                height: 233.v,
                width: 350.h,
              ),
              SizedBox(height: 35.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 66.h),
                  child: Text(
                    "Make Payment",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Container(
                width: 338.h,
                margin: EdgeInsets.only(
                  left: 5.h,
                  right: 7.h,
                ),
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
              SizedBox(height: 2.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrameOne(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 24.v,
      title: AppbarSubtitleOne(
        text: "2/3",
        margin: EdgeInsets.only(left: 15.h),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "Skip",
          margin: EdgeInsets.only(
            left: 15.h,
            top: 1.v,
            right: 15.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 19.h,
        bottom: 24.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Prev",
            style: CustomTextStyles.titleMediumGray40001,
          ),
          Spacer(
            flex: 46,
          ),
          Container(
            height: 10.v,
            margin: EdgeInsets.symmetric(vertical: 6.v),
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
          Spacer(
            flex: 53,
          ),
          Text(
            "Next",
            style: CustomTextStyles.titleMediumPrimary,
          ),
        ],
      ),
    );
  }
}
