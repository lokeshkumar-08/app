import '../trending_products_page/widgets/iteams_item_widget.dart';
import '../trending_products_page/widgets/productcard1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_title_image.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class TrendingProductsPage extends StatelessWidget {
  TrendingProductsPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Container(
              height: 2147.v,
              width: 343.h,
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: AppDecoration.fillGray50,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomSearchView(
                            controller: searchController,
                            hintText: "Search any Product..",
                          ),
                          SizedBox(height: 16.v),
                          _buildIteams(context),
                          SizedBox(height: 16.v),
                          _buildProductCard(context),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 60.v),
                      decoration: AppDecoration.outlineBlack90002.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplash9u18fiowwbw1,
                            height: 136.v,
                            width: 164.h,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Muscle Blaze...",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 148.h,
                              child: Text(
                                "NUTRITIONAL POWERHOUSE: MuscleBl...",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmall10.copyWith(
                                  height: 1.60,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "₹3,900",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Amber600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Amber600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Amber600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Gray40003,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Gray40003,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "1,35,566",
                                    style: CustomTextStyles
                                        .bodySmallOnPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: AppDecoration.outlineBlack90002.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplash0vsk29dkqo2,
                            height: 196.v,
                            width: 163.h,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Hot chocolate",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 148.h,
                              child: Text(
                                "chocolate with ashwagandha and get a coconu...",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmall10.copyWith(
                                  height: 1.60,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "₹200",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Amber600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Amber600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Amber600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Amber600,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgComponent1Gray40003,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "6,23,569",
                                    style: CustomTextStyles
                                        .bodySmallOnPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.v),
                        ],
                      ),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgComponent1,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 4.v,
          bottom: 4.v,
        ),
      ),
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgGroup34010,
        margin: EdgeInsets.only(left: 83.h),
      ),
      actions: [
        AppbarSubtitle(
          text: "Stylish",
          margin: EdgeInsets.only(
            left: 9.h,
            top: 8.v,
            bottom: 8.v,
          ),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.img2289Skvnqsbgqu1pidewmjgtmte2,
          margin: EdgeInsets.only(
            left: 79.h,
            right: 12.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildIteams(BuildContext context) {
    return Wrap(
      runSpacing: 62.v,
      spacing: 62.h,
      children: List<Widget>.generate(3, (index) => IteamsItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 4,
      crossAxisSpacing: 16.h,
      mainAxisSpacing: 16.h,
      staggeredTileBuilder: (index) {
        return StaggeredTile.fit(2);
      },
      itemCount: 12,
      itemBuilder: (context, index) {
        return Productcard1ItemWidget();
      },
    );
  }
}
