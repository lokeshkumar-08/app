import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/presentation/place_order_screen/place_order_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/splash_screen_three_screen/splash_screen_three_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/splash_screen/splash_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/get_started_screen/get_started_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/shop_page_tab_container_screen/shop_page_tab_container_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/profile_screen/profile_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/checkout_screen/checkout_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/shipping_screen/shipping_screen.dart';
import 'package:lokesh_s_e_commerce/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String placeOrderScreen = '/place_order_screen';

  static const String splashScreenThreeScreen = '/splash_screen_three_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String trendingProductsPage = '/trending_products_page';

  static const String shopPage = '/shop_page';

  static const String shopPageTabContainerScreen =
      '/shop_page_tab_container_screen';

  static const String profileScreen = '/profile_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String shippingScreen = '/shipping_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    placeOrderScreen: (context) => PlaceOrderScreen(),
    splashScreenThreeScreen: (context) => SplashScreenThreeScreen(),
    splashScreenTwoScreen: (context) => SplashScreenTwoScreen(),
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    splashScreen: (context) => SplashScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    getStartedScreen: (context) => GetStartedScreen(),
    homePageContainerScreen: (context) => HomePageContainerScreen(),
    shopPageTabContainerScreen: (context) => ShopPageTabContainerScreen(),
    profileScreen: (context) => ProfileScreen(),
    checkoutScreen: (context) => CheckoutScreen(),
    shippingScreen: (context) => ShippingScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
