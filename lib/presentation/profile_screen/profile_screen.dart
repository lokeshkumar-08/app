import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/appbar_title.dart';
import 'package:lokesh_s_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_drop_down.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_elevated_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_icon_button.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController countryController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController iFSCCodevalueController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 4.v),
                    child: Column(children: [
                      SizedBox(height: 14.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.h, right: 24.h, bottom: 5.v),
                                  child: Column(children: [
                                    SizedBox(
                                        height: 98.v,
                                        width: 103.h,
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img2289Skvnqsbgqu1pidewmjgtmte296x96,
                                                  height: 96.adaptSize,
                                                  width: 96.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      48.h),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              CustomIconButton(
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCloseBlueA200))
                                            ])),
                                    SizedBox(height: 27.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Personal Details",
                                            style: CustomTextStyles
                                                .titleMediumSemiBold18)),
                                    SizedBox(height: 20.v),
                                    _buildPersonalDetails(context),
                                    SizedBox(height: 28.v),
                                    _buildChangePassword(context),
                                    SizedBox(height: 14.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("Change Password",
                                            style: CustomTextStyles
                                                .labelLargePlusJakartaSansPrimary
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))),
                                    SizedBox(height: 34.v),
                                    Divider(),
                                    SizedBox(height: 33.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Business Address Details",
                                            style: CustomTextStyles
                                                .titleMediumSemiBold_2)),
                                    SizedBox(height: 22.v),
                                    _buildPincode(context),
                                    SizedBox(height: 28.v),
                                    _buildAddress(context),
                                    SizedBox(height: 29.v),
                                    _buildCity(context),
                                    SizedBox(height: 28.v),
                                    _buildState(context),
                                    SizedBox(height: 29.v),
                                    _buildCountry(context),
                                    SizedBox(height: 34.v),
                                    Divider(),
                                    SizedBox(height: 31.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Bank Account Details",
                                            style: CustomTextStyles
                                                .titleMediumSemiBold_2)),
                                    SizedBox(height: 24.v),
                                    _buildBankAccountNumber(context),
                                    SizedBox(height: 28.v),
                                    _buildAccountHoldersName(context),
                                    SizedBox(height: 28.v),
                                    _buildIfscCode(context)
                                  ]))))
                    ]))),
            bottomNavigationBar: _buildSave(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 22.h, top: 18.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Checkout"));
  }

  /// Section Widget
  Widget _buildPersonalDetails(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email Address", style: theme.textTheme.bodySmall),
      SizedBox(height: 14.v),
      CustomTextFormField(
          controller: emailController,
          hintText: "aashifa@gmail.com",
          hintStyle: CustomTextStyles.labelLargeSemiBold13,
          textInputType: TextInputType.emailAddress)
    ]);
  }

  /// Section Widget
  Widget _buildChangePassword(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password", style: theme.textTheme.bodySmall),
      SizedBox(height: 14.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "***********",
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildPincode(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Pincode", style: theme.textTheme.bodySmall),
      SizedBox(height: 14.v),
      CustomTextFormField(controller: pincodeController, hintText: "450116")
    ]);
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Address", style: theme.textTheme.bodySmall),
      SizedBox(height: 14.v),
      CustomTextFormField(
          controller: addressController,
          hintText: "216 St Paul's Rd, ",
          hintStyle: CustomTextStyles.titleMediumSemiBold_2)
    ]);
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("City", style: theme.textTheme.bodySmall),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: cityController,
          hintText: "London",
          hintStyle: CustomTextStyles.titleMediumSemiBold_2)
    ]);
  }

  /// Section Widget
  Widget _buildState(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("State", style: theme.textTheme.bodySmall),
      SizedBox(height: 14.v),
      CustomDropDown(
          icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 19.v, 11.h, 19.v),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(1.h)),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdownBlueGray300,
                  height: 10.v,
                  width: 20.h)),
          hintText: "N1 2LL,",
          items: dropdownItemList,
          onChanged: (value) {})
    ]);
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Country", style: theme.textTheme.bodySmall),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: countryController, hintText: "United Kingdom")
    ]);
  }

  /// Section Widget
  Widget _buildBankAccountNumber(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Bank Account Number", style: theme.textTheme.bodySmall),
      SizedBox(height: 14.v),
      CustomTextFormField(
          controller: priceController, hintText: "204356XXXXXXX")
    ]);
  }

  /// Section Widget
  Widget _buildAccountHoldersName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Account Holder’s Name", style: theme.textTheme.bodySmall),
      SizedBox(height: 14.v),
      CustomTextFormField(
          controller: nameController, hintText: "Abhiraj Sisodiya")
    ]);
  }

  /// Section Widget
  Widget _buildIfscCode(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("IFSC Code", style: theme.textTheme.bodySmall),
      SizedBox(height: 14.v),
      CustomTextFormField(
          controller: iFSCCodevalueController,
          hintText: "SBIN00428",
          textInputAction: TextInputAction.done)
    ]);
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        text: "Save",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 57.v),
        buttonStyle: CustomButtonStyles.fillPrimaryTL8,
        buttonTextStyle: CustomTextStyles.titleSmallPlusJakartaSansWhiteA70001);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
