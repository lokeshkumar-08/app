import '../shop_page_tab_container_screen/widgets/twentysix_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/presentation/home_page/home_page.dart';
import 'package:lokesh_s_e_commerce/presentation/shop_page/shop_page.dart';
import 'package:lokesh_s_e_commerce/presentation/trending_products_page/trending_products_page.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_bottom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_floating_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopPageTabContainerScreen extends StatefulWidget {
  const ShopPageTabContainerScreen({Key? key}) : super(key: key);

  @override
  ShopPageTabContainerScreenState createState() =>
      ShopPageTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ShopPageTabContainerScreenState extends State<ShopPageTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  int sliderIndex = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildNineteen(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 1091.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 311.v),
                                        height: 780.v,
                                        child: TabBarView(
                                            controller: tabviewController,
                                            children: [
                                              ShopPage(),
                                              ShopPage(),
                                              ShopPage(),
                                              ShopPage(),
                                              ShopPage()
                                            ])),
                                    _buildTelevision(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBarStock(context),
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
  Widget _buildSizeUK(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Size: 7UK", style: theme.textTheme.titleSmall),
          SizedBox(height: 11.v),
          Container(
              height: 32.v,
              width: 288.h,
              child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.whiteA70001,
                  labelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                  unselectedLabelColor: appTheme.pink300,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                  indicator: BoxDecoration(
                      color: appTheme.pink300,
                      borderRadius: BorderRadius.circular(4.h)),
                  tabs: [
                    Tab(child: Text("6 UK")),
                    Tab(child: Text("7 UK")),
                    Tab(child: Text("8 UK")),
                    Tab(child: Text("9 UK")),
                    Tab(child: Text("10 UK"))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillGray50,
        child: Column(children: [
          SizedBox(
              height: 56.v,
              width: double.maxFinite,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                CustomAppBar(actions: [
                  AppbarTrailingIconbutton(
                      imagePath: ImageConstant.imgComponent1BlueGray90032x32,
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 12.v))
                ]),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 19.v,
                    width: 9.h,
                    radius: BorderRadius.circular(1.h),
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 22.h, bottom: 16.v),
                    onTap: () {
                      onTapImgArrowLeft(context);
                    })
              ])),
          SizedBox(height: 265.v),
          _buildSizeUK(context)
        ]));
  }

  /// Section Widget
  Widget _buildTelevision(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 235.v,
            width: 359.h,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      height: 10.v,
                      margin: EdgeInsets.only(left: 143.h),
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 5,
                          effect: ScrollingDotsEffect(
                              spacing: 4,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.gray300,
                              activeDotScale: 1.25,
                              dotHeight: 8.v,
                              dotWidth: 8.h)))),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 235.v,
                      width: 359.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CarouselSlider.builder(
                            options: CarouselOptions(
                                height: 235.v,
                                initialPage: 0,
                                autoPlay: true,
                                viewportFraction: 1.0,
                                enableInfiniteScroll: false,
                                scrollDirection: Axis.horizontal,
                                onPageChanged: (index, reason) {
                                  sliderIndex = index;
                                }),
                            itemCount: 6,
                            itemBuilder: (context, index, realIndex) {
                              return TwentysixItemWidget();
                            }),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                                height: 10.v,
                                child: AnimatedSmoothIndicator(
                                    activeIndex: sliderIndex,
                                    count: 6,
                                    axisDirection: Axis.horizontal,
                                    effect: ScrollingDotsEffect(
                                        spacing: 4,
                                        activeDotColor: appTheme.gray60001,
                                        dotColor: appTheme.gray10003,
                                        activeDotScale: 1.25,
                                        dotHeight: 8.v,
                                        dotWidth: 8.h))))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBarStock(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
