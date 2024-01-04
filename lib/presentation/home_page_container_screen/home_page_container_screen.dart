import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/presentation/home_page/home_page.dart';
import 'package:lokesh_s_e_commerce/presentation/trending_products_page/trending_products_page.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_bottom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class HomePageContainerScreen extends StatelessWidget {
  HomePageContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomAppBarStock(context),
            floatingActionButton: CustomFloatingButton(
                height: 56,
                width: 53,
                backgroundColor: appTheme.whiteA70001,
                child: CustomImageView(
                    imagePath: ImageConstant.imgShoppingCart2,
                    height: 28.0.v,
                    width: 26.5.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBarStock(BuildContext context) {
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
}
