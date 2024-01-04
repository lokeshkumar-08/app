import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_elevated_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

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
                  horizontal: 29.h,
                  vertical: 19.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 203.h,
                      child: Text(
                        "Forgot\npassword?",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.displaySmall!.copyWith(
                          height: 1.19,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "Enter your email address",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(13.h, 17.v, 7.h, 14.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMail,
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
                    SizedBox(height: 26.v),
                    Container(
                      width: 261.h,
                      margin: EdgeInsets.only(right: 54.h),
                      child: Text(
                        "* We will send you a message to set or reset your new password",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray700_1,
                      ),
                    ),
                    SizedBox(height: 41.v),
                    CustomElevatedButton(
                      text: "Submit",
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
