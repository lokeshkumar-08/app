import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_elevated_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_icon_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                  horizontal: 29.h,
                  vertical: 18.v,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 180.h,
                        child: Text(
                          "Create an \naccount",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displaySmall!.copyWith(
                            height: 1.19,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32.v),
                    _buildUserName(context),
                    SizedBox(height: 31.v),
                    _buildPassword(context),
                    SizedBox(height: 31.v),
                    _buildConfirmpassword(context),
                    SizedBox(height: 19.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 251.h,
                        margin: EdgeInsets.only(right: 64.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "By clicking the ",
                                style: CustomTextStyles.bodySmallGray700,
                              ),
                              TextSpan(
                                text:
                                    "Register button, you agree to the public offer",
                                style: CustomTextStyles
                                    .bodySmallSecondaryContainer,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 35.v),
                    _buildCreateAccount(context),
                    SizedBox(height: 40.v),
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
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "I Already Have an Account",
                            style: CustomTextStyles.bodyMediumPoppinsGray70001,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "Login",
                              style:
                                  CustomTextStyles.titleSmallPrimary.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
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

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
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
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
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
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
      controller: confirmpasswordController,
      hintText: "ConfirmPassword",
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
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
      text: "Create Account",
    );
  }
}
