import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/presentation/home_page/home_page.dart';
import 'package:lokesh_s_e_commerce/presentation/trending_products_page/trending_products_page.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_title.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_title_image_one.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_bottom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_elevated_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_floating_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ShippingScreen extends StatelessWidget {
  ShippingScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 33.h, right: 22.h, bottom: 66.v),
                              child: Column(children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: _buildOrderDetails(context,
                                        shippingLabel: "Order",
                                        thirtyLabel: "7,000")),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: _buildOrderDetails(context,
                                        shippingLabel: "Shipping",
                                        thirtyLabel: "30")),
                                SizedBox(height: 18.v),
                                _buildOrderTotal(context),
                                SizedBox(height: 22.v),
                                Divider(indent: 9.h),
                                SizedBox(height: 31.v),
                                _buildPaymentOptions(context),
                                SizedBox(height: 25.v),
                                _buildPaypal(context),
                                SizedBox(height: 25.v),
                                _buildMaestro(context),
                                SizedBox(height: 25.v),
                                _buildSignInWithApple(context),
                                SizedBox(height: 25.v),
                                CustomElevatedButton(
                                    height: 59.v,
                                    text: "Continue",
                                    margin: EdgeInsets.only(right: 11.h),
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimaryTL8,
                                    buttonTextStyle:
                                        CustomTextStyles.titleLargeBold,
                                    alignment: Alignment.centerLeft)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 56,
                width: 53,
                backgroundColor: appTheme.red600,
                decoration: FloatingButtonStyleHelper.fillRed,
                child: CustomImageView(
                    imagePath: ImageConstant.imgShoppingCart2Gray20001,
                    height: 28.0.v,
                    width: 26.5.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 22.h, right: 142.h),
              child: Row(children: [
                AppbarTitleImageOne(
                    imagePath: ImageConstant.imgArrowLeft,
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarTitle(
                    text: "Checkout", margin: EdgeInsets.only(left: 112.h))
              ])),
          SizedBox(height: 18.v),
          Opacity(
              opacity: 0.2,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(color: appTheme.gray4006c))))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildOrderTotal(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total", style: CustomTextStyles.titleMediumBluegray70018),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlueGray700,
                  height: 12.v,
                  width: 9.h,
                  margin: EdgeInsets.symmetric(vertical: 5.v)),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 3.v),
                  child: Text("7,030",
                      style: CustomTextStyles.titleMediumBluegray700))
            ]));
  }

  /// Section Widget
  Widget _buildPaymentOptions(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text("Payment", style: CustomTextStyles.titleMediumGray900)),
      SizedBox(height: 10.v),
      Container(
          margin: EdgeInsets.only(right: 11.h),
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.v),
          decoration: AppDecoration.outlinePrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomImageView(
                imagePath: ImageConstant.imgVisa1,
                height: 20.v,
                width: 47.h,
                margin: EdgeInsets.only(top: 1.v)),
            Padding(
                padding: EdgeInsets.only(right: 10.h),
                child: Text("*********2109",
                    style: CustomTextStyles.titleSmallGray60002))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildPaypal(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            margin: EdgeInsets.only(right: 11.h),
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 18.v),
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPaypal1,
                      height: 20.v,
                      width: 62.h,
                      margin: EdgeInsets.only(top: 1.v)),
                  Padding(
                      padding: EdgeInsets.only(right: 5.h),
                      child: Text("*********2109",
                          style: CustomTextStyles.titleSmallGray60002))
                ])));
  }

  /// Section Widget
  Widget _buildMaestro(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            margin: EdgeInsets.only(right: 11.h),
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 18.v),
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: CustomIconButton(
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgMaestro1))),
                  Padding(
                      padding: EdgeInsets.only(right: 5.h),
                      child: Text("*********2109",
                          style: CustomTextStyles.titleSmallGray60002))
                ])));
  }

  /// Section Widget
  Widget _buildSignInWithApple(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            margin: EdgeInsets.only(right: 11.h),
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v),
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 3.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 5.v),
                      decoration: AppDecoration.fillWhiteA70001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: CustomImageView(
                          imagePath: ImageConstant.img,
                          height: 10.v,
                          width: 8.h,
                          alignment: Alignment.topCenter)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 3.v, right: 5.h, bottom: 4.v),
                      child: Text("*********2109",
                          style: CustomTextStyles.titleSmallGray60002))
                ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildOrderDetails(
    BuildContext context, {
    required String shippingLabel,
    required String thirtyLabel,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Text(shippingLabel,
                  style: CustomTextStyles.titleMediumGray50002
                      .copyWith(color: appTheme.gray50002))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsGray50003,
              height: 12.v,
              width: 9.h,
              margin: EdgeInsets.only(top: 3.v, bottom: 12.v)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, bottom: 7.v),
              child: Text(thirtyLabel,
                  style: CustomTextStyles.titleMediumGray50003
                      .copyWith(color: appTheme.gray50003)))
        ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Wishlist:
        return AppRoutes.trendingProductsPage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Setting:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.trendingProductsPage:
        return TrendingProductsPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
