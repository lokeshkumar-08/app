import '../checkout_screen/widgets/checkout_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_title.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_title_image_one.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_icon_button.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v),
                child: Column(children: [
                  _buildDeliveryAddress(context),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("Shopping List",
                              style: theme.textTheme.titleSmall))),
                  SizedBox(height: 8.v),
                  _buildCheckout(context)
                ]))));
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
  Widget _buildDeliveryAddress(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgLinkedin,
                height: 15.v,
                width: 12.h,
                margin: EdgeInsets.only(top: 1.v, bottom: 2.v)),
            Padding(
                padding: EdgeInsets.only(left: 8.h),
                child:
                    Text("Delivery Address", style: theme.textTheme.titleSmall))
          ]),
          SizedBox(height: 11.v),
          Padding(
              padding: EdgeInsets.only(right: 12.h),
              child: Row(children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(8.h),
                        decoration: AppDecoration.outlineBlack900021.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 7.v),
                                            child: Text("Address :",
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgEdit,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 10.v))
                                      ])),
                              SizedBox(height: 7.v),
                              Container(
                                  width: 210.h,
                                  margin: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                      "216 St Paul's Rd, London N1 2LL, UK\nContact :  +44-784232",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.17))),
                              SizedBox(height: 4.v)
                            ]))),
                Container(
                    height: 79.v,
                    width: 78.h,
                    margin: EdgeInsets.only(left: 12.h),
                    padding: EdgeInsets.all(27.h),
                    decoration: AppDecoration.outlineBlack900021.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.topCenter,
                        child:
                            CustomImageView(imagePath: ImageConstant.imgPlus)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildCheckout(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Opacity(
                  opacity: 0.6,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.5.v),
                      child: SizedBox(
                          width: 311.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.gray40003.withOpacity(0.56)))));
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return CheckoutItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
