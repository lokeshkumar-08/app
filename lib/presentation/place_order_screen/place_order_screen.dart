import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_elevated_button.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: 393.h,
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 17.h, right: 17.h, bottom: 5.v),
                              child: Column(children: [
                                _buildProductDetails(context),
                                SizedBox(height: 54.v),
                                _buildCoupon(context),
                                SizedBox(height: 34.v),
                                Divider(color: appTheme.gray400),
                                SizedBox(height: 36.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("Order Payment Details",
                                            style: CustomTextStyles
                                                .titleMedium17))),
                                SizedBox(height: 24.v),
                                _buildOrderPaymentDetails(context),
                                SizedBox(height: 10.v),
                                _buildConvenience(context),
                                SizedBox(height: 9.v),
                                _buildDeliveryFee(context),
                                SizedBox(height: 38.v),
                                Divider(color: appTheme.gray400),
                                SizedBox(height: 29.v),
                                _buildOrderTotal(context),
                                SizedBox(height: 9.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Row(children: [
                                          Text("EMI  Available ",
                                              style: theme.textTheme.bodyLarge),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 22.h,
                                                  top: 2.v,
                                                  bottom: 2.v),
                                              child: Text("Details",
                                                  style: CustomTextStyles
                                                      .labelLargePrimary))
                                        ])))
                              ]))))
                ])),
            bottomNavigationBar: _buildTabBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 43.v,
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 22.h, top: 11.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleFour(text: "Shopping Bag"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFavorite,
              margin: EdgeInsets.fromLTRB(30.h, 13.v, 30.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 5.h, right: 21.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage15,
                  height: 153.v,
                  width: 123.h,
                  radius: BorderRadius.circular(4.h)),
              Padding(
                  padding: EdgeInsets.only(left: 21.h, top: 8.v, bottom: 15.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Women’s Casual Wear",
                            style: CustomTextStyles.titleMediumSemiBold_2),
                        SizedBox(height: 10.v),
                        SizedBox(
                            width: 164.h,
                            child: Text("Checked Single-Breasted Blazer",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMedium13_1)),
                        SizedBox(height: 9.v),
                        SizedBox(
                            width: 188.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      width: 86.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Size",
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            Text("42",
                                                style: CustomTextStyles
                                                    .titleSmallMedium),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowDown,
                                                height: 5.v,
                                                width: 10.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 13.v))
                                          ])),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6.h, vertical: 2.v),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text("Qty",
                                                    style: theme
                                                        .textTheme.bodyMedium)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 14.h, top: 1.v),
                                                child: Text("1",
                                                    style: CustomTextStyles
                                                        .titleSmallMedium)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowDown,
                                                height: 5.v,
                                                width: 10.h,
                                                margin: EdgeInsets.only(
                                                    left: 20.h, bottom: 13.v))
                                          ]))
                                ])),
                        SizedBox(height: 12.v),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: Text("Delivery by ",
                                  style: CustomTextStyles.bodyMedium13)),
                          Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text("10 May 2XXX",
                                  style:
                                      CustomTextStyles.titleMediumSemiBold_3))
                        ])
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildCoupon(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTelevision,
              height: 20.v,
              width: 31.h),
          Padding(
              padding: EdgeInsets.only(left: 9.h),
              child:
                  Text("Apply Coupons", style: CustomTextStyles.titleMedium_1)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child:
                  Text("Select", style: CustomTextStyles.titleSmallPrimary_1))
        ]));
  }

  /// Section Widget
  Widget _buildOrderPaymentDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 4.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order Amounts", style: theme.textTheme.bodyLarge),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 12.v,
                  width: 9.h,
                  margin: EdgeInsets.only(top: 3.v, bottom: 5.v)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("7,000.00",
                      style: CustomTextStyles.titleMediumSemiBold_2))
            ]));
  }

  /// Section Widget
  Widget _buildConvenience(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Convenience", style: theme.textTheme.bodyLarge),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 4.v),
              child:
                  Text("Know More", style: CustomTextStyles.labelLargePrimary)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Text("Apply Coupon",
                  style: CustomTextStyles.labelLargeErrorContainer))
        ]));
  }

  /// Section Widget
  Widget _buildDeliveryFee(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v),
              child:
                  Text("Delivery Fee", style: CustomTextStyles.bodyMedium_1)),
          Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text("Free", style: CustomTextStyles.titleSmallPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildOrderTotal(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order Total", style: CustomTextStyles.titleMedium17),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 12.v,
                  width: 9.h,
                  margin: EdgeInsets.only(top: 3.v, bottom: 5.v)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("7,000.00",
                      style: CustomTextStyles.titleMediumSemiBold_2))
            ]));
  }

  /// Section Widget
  Widget _buildTabBar(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 21.h, right: 21.h, bottom: 66.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder24),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 1.v),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgSettings,
                                  height: 12.v,
                                  width: 9.h,
                                  margin:
                                      EdgeInsets.only(top: 2.v, bottom: 5.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("7,000.00",
                                      style: CustomTextStyles
                                          .titleMediumSemiBold_2))
                            ])),
                    Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text("View Details",
                            style: CustomTextStyles.labelLargePrimary))
                  ])),
          CustomElevatedButton(
              height: 48.v,
              width: 219.h,
              text: "Proceed to Payment",
              buttonTextStyle: CustomTextStyles.bodyLargeWhiteA70001,
              onPressed: () {
                onTapProceedToPayment(context);
              })
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the shippingScreen when the action is triggered.
  onTapProceedToPayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shippingScreen);
  }
}
