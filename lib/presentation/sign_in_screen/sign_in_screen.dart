import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_elevated_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_icon_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 17.v,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 179.h,
                        margin: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "Welcome \nBack!",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displaySmall!.copyWith(
                            height: 1.19,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        right: 1.h,
                      ),
                      child: CustomTextFormField(
                        controller: userNameController,
                        hintText: "Username or Email",
                        textInputType: TextInputType.emailAddress,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(11.h, 16.v, 3.h, 15.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 55.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 20.v,
                          right: 30.h,
                          bottom: 20.v,
                        ),
                      ),
                    ),
                    SizedBox(height: 31.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        right: 1.h,
                      ),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(15.h, 17.v, 11.h, 18.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgTrophy,
                            height: 20.v,
                            width: 16.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 55.v,
                        ),
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 17.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEye,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 55.v,
                        ),
                        obscureText: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 20.v),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: CustomTextStyles.bodySmallPrimary,
                      ),
                    ),
                    SizedBox(height: 50.v),
                    CustomElevatedButton(
                      text: "Login",
                      margin: EdgeInsets.symmetric(horizontal: 4.h),
                    ),
                    SizedBox(height: 75.v),
                    Text(
                      "- OR Continue with -",
                      style: CustomTextStyles.labelLargeGray70001,
                    ),
                    SizedBox(height: 19.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            padding: EdgeInsets.all(15.h),
                            decoration: IconButtonStyleHelper.outlinePrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGoogle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            bottom: 1.v,
                          ),
                          child: CustomIconButton(
                            height: 55.adaptSize,
                            width: 55.adaptSize,
                            padding: EdgeInsets.all(15.h),
                            decoration: IconButtonStyleHelper.outlinePrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgApple1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: CustomIconButton(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            padding: EdgeInsets.all(15.h),
                            decoration: IconButtonStyleHelper.outlinePrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFacebookAppSymbol,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 28.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create An Account",
                          style: CustomTextStyles.bodyMediumGray70001,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "Sign Up",
                            style: CustomTextStyles.titleSmallPrimary.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
