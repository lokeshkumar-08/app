import '../shop_page/widgets/iteamschipview_item_widget.dart';
import '../shop_page/widgets/productcardlist_item_widget.dart';
import '../shop_page/widgets/ratingbarrow_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_outlined_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class ShopPage extends StatefulWidget {
  const ShopPage({Key? key})
      : super(
          key: key,
        );

  @override
  ShopPageState createState() => ShopPageState();
}

class ShopPageState extends State<ShopPage>
    with AutomaticKeepAliveClientMixin<ShopPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 311.v),
              child: Column(
                children: [
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "NIke Sneakers",
                            style: CustomTextStyles.titleLargeBlack90002_1,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "Vision Alta Men’s Shoes Size (All Colours)",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: CustomRatingBar(
                                  initialRating: 0,
                                  itemSize: 18,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "56,890",
                                  style: CustomTextStyles.titleSmallGray60001,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Row(
                            children: [
                              Container(
                                height: 18.v,
                                width: 50.h,
                                margin: EdgeInsets.only(top: 1.v),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Text(
                                          "₹2,999",
                                          style: CustomTextStyles
                                              .bodyMediumBluegray400,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: 50.h,
                                        child: Divider(
                                          color: appTheme.blueGray400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 1.v,
                                ),
                                child: Text(
                                  "₹1,500",
                                  style: CustomTextStyles.titleSmallMedium_1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "50% Off",
                                  style: CustomTextStyles.titleSmallPink300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "Product Details",
                            style: CustomTextStyles.titleSmallMedium_1,
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 343.h,
                            margin: EdgeInsets.only(
                              left: 12.h,
                              right: 16.h,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "Perhaps the most iconic sneaker of all-time, this original \"Chicago\"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  TextSpan(
                                    text: " ...",
                                    style: CustomTextStyles.bodySmallGray60001,
                                  ),
                                  TextSpan(
                                    text: "More",
                                    style: CustomTextStyles.bodySmallPink300,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildRatingBarRow(context),
                        SizedBox(height: 12.v),
                        _buildLineStack(context),
                        SizedBox(height: 16.v),
                        _buildViewSimilarRow(context),
                        SizedBox(height: 17.v),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "Similar To",
                            style: CustomTextStyles.titleLargeBlack90002_1,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildIteamsChipView(context),
                        SizedBox(height: 18.v),
                        _buildProductCardList(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRatingBarRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children: List<Widget>.generate(5, (index) => RatingbarrowItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineStack(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 60.v,
        width: 350.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 52.v,
                child: VerticalDivider(
                  width: 3.h,
                  thickness: 3.v,
                  color: appTheme.blueGray100,
                  indent: 4.h,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.fillRed.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 6.v),
                    Text(
                      "Delivery in ",
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(
                      "1 within Hour",
                      style: CustomTextStyles.titleLargePoppinsBlack900,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewSimilarRow(BuildContext context) {
    return Row(
      children: [
        CustomOutlinedButton(
          height: 48.v,
          width: 182.h,
          text: "View Similar",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 7.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgComponent1Gray9000224x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.outlineBlueGray,
          buttonTextStyle: CustomTextStyles.titleSmallMedium_1,
        ),
        CustomOutlinedButton(
          height: 48.v,
          width: 182.h,
          text: "Add to Compare",
          margin: EdgeInsets.only(left: 3.h),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 7.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgComponent1BlueGray900,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.outlineBlueGray,
          buttonTextStyle: CustomTextStyles.titleSmallGray90002,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildIteamsChipView(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        runSpacing: 86.v,
        spacing: 86.h,
        children:
            List<Widget>.generate(3, (index) => IteamschipviewItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardList(BuildContext context) {
    return SizedBox(
      height: 245.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 12.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ProductcardlistItemWidget();
        },
      ),
    );
  }
}
