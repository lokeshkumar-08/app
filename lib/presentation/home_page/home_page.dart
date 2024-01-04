import '../home_page/widgets/allfeatured_item_widget.dart';
import '../home_page/widgets/categories_item_widget.dart';
import '../home_page/widgets/productcard_item_widget.dart';
import '../home_page/widgets/productlist_item_widget.dart';
import '../home_page/widgets/trendingproducts_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_title_image.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_checkbox_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_elevated_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_outlined_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  bool specialOffers = false;

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
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                bottom: 18.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16.h),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Search any Product..",
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildAllFeatured(context),
                  SizedBox(height: 16.v),
                  _buildCategories(context),
                  SizedBox(height: 16.v),
                  _buildProductCard(context),
                  SizedBox(height: 22.v),
                  _buildDealOfTheDay(context),
                  SizedBox(height: 16.v),
                  _buildTrendingProducts(context),
                  SizedBox(height: 16.v),
                  _buildSpecialOffers(context),
                  SizedBox(height: 16.v),
                  _buildMac(context),
                  SizedBox(height: 17.v),
                  _buildTrendingDeals(context),
                  SizedBox(height: 16.v),
                  _buildProductList(context),
                  SizedBox(height: 16.v),
                  _buildNewArrivals(context),
                  SizedBox(height: 16.v),
                  _buildSponsored(context),
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
  Widget _buildAllFeatured(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Wrap(
        runSpacing: 79.v,
        spacing: 79.h,
        children: List<Widget>.generate(3, (index) => AllfeaturedItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return SizedBox(
      height: 87.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 1.h,
          );
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return CategoriesItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 189.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return ProductcardItemWidget();
            },
          ),
        ),
        SizedBox(height: 16.v),
        Container(
          height: 9.v,
          margin: EdgeInsets.only(left: 156.h),
          child: AnimatedSmoothIndicator(
            activeIndex: sliderIndex,
            count: 1,
            axisDirection: Axis.horizontal,
            effect: ScrollingDotsEffect(
              activeDotColor: Color(0X1212121D),
              dotHeight: 9.v,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildViewAll(BuildContext context) {
    return CustomOutlinedButton(
      width: 89.h,
      text: "View all",
      margin: EdgeInsets.only(
        top: 8.v,
        right: 4.h,
        bottom: 8.v,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowright,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDealOfTheDay(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deal of the Day",
                  style: CustomTextStyles.titleMediumWhiteA70001,
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgComponent1WhiteA70001,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "22h 55m 20s remaining ",
                        style: CustomTextStyles.bodySmallWhiteA70001,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildViewAll(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingProducts(BuildContext context) {
    return SizedBox(
      height: 241.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 55.0.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
              indent: 6.0.h,
              endIndent: 6.0.h,
            ),
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return TrendingproductsItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecialOffers(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA70001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle56,
            height: 60.v,
            width: 75.h,
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCheckboxButton(
                  width: 140.h,
                  text: "Special Offers",
                  value: specialOffers,
                  isRightCheck: true,
                  onChange: (value) {
                    specialOffers = value;
                  },
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 167.h,
                  child: Text(
                    "We make sure you get the offer you need at best prices",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallLight.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVisitNow(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 92.h,
      text: "Visit now ",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowright,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA70001_1,
    );
  }

  /// Section Widget
  Widget _buildMac(BuildContext context) {
    return Container(
      height: 171.v,
      width: 343.h,
      decoration: AppDecoration.fillWhiteA70001,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                left: 8.h,
                right: 4.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 36.v,
              ),
              decoration: AppDecoration.fillGrayC,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 23.h),
                    child: Text(
                      "Flat and Heels",
                      style: CustomTextStyles.titleMediumGray90002,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: Text(
                      "Stand a chance to get rewarded",
                      style: CustomTextStyles.bodySmallGray90002,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildVisitNow(context),
                  SizedBox(height: 10.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup33732,
            height: 156.v,
            width: 77.h,
            alignment: Alignment.centerLeft,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 171.v,
              width: 11.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.25, 0.4),
                  end: Alignment(1, 0.4),
                  colors: [
                    appTheme.yellow800,
                    appTheme.orange100,
                  ],
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle55,
            height: 108.v,
            width: 144.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewAll1(BuildContext context) {
    return CustomOutlinedButton(
      width: 89.h,
      text: "View all",
      margin: EdgeInsets.only(
        top: 8.v,
        right: 4.h,
        bottom: 8.v,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowright,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingDeals(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillPink.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trending Products ",
                  style: CustomTextStyles.titleMediumWhiteA70001,
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgComponent1WhiteA7000116x16,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Last Date 29/02/22",
                        style: CustomTextStyles.bodySmallWhiteA70001,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildViewAll1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return SizedBox(
      height: 186.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 53.0.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
              indent: 8.0.h,
              endIndent: 8.0.h,
            ),
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return ProductlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildViewAll2(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 89.h,
      text: "View all",
      margin: EdgeInsets.only(top: 20.v),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowright,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA70001,
    );
  }

  /// Section Widget
  Widget _buildNewArrivals(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      decoration: AppDecoration.fillWhiteA70001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 200.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage9,
                  height: 200.v,
                  width: 343.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(8.h),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage10,
                  height: 200.v,
                  width: 343.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(8.h),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              right: 12.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Arrivals ",
                      style: CustomTextStyles.titleLargeBlack90002,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Summer’ 25 Collections",
                      style: CustomTextStyles.bodyLarge_1,
                    ),
                  ],
                ),
                _buildViewAll2(context),
              ],
            ),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSponsored(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: AppDecoration.fillWhiteA70001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "Sponserd",
              style: CustomTextStyles.titleLargeBlack90002,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage12,
                  height: 292.v,
                  width: 343.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "up to 50% Off",
                          style: CustomTextStyles.titleMediumBold,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRightBlueGray900,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
