import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SucessfullyDialog extends StatelessWidget {
  const SucessfullyDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildPaymentDoneSuccessfully(context),
    );
  }

  /// Section Widget
  Widget _buildPaymentDoneSuccessfully(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 22.h,
        right: 22.h,
        bottom: 391.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 65.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillWhiteA70001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 34.h,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 11.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgStar8,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          radius: BorderRadius.circular(
                            7.h,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Opacity(
                        opacity: 0.4,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgStar5,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          radius: BorderRadius.circular(
                            3.h,
                          ),
                          margin: EdgeInsets.only(right: 7.h),
                        ),
                      ),
                      SizedBox(height: 34.v),
                      Opacity(
                        opacity: 0.4,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgStar6,
                          height: 11.adaptSize,
                          width: 11.adaptSize,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgStar2,
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            radius: BorderRadius.circular(
                              3.h,
                            ),
                            margin: EdgeInsets.only(left: 48.h),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 91.adaptSize,
                              width: 91.adaptSize,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgStar1,
                                    height: 91.adaptSize,
                                    width: 91.adaptSize,
                                    radius: BorderRadius.circular(
                                      28.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 30.v,
                                    width: 43.h,
                                    radius: BorderRadius.circular(
                                      1.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Opacity(
                                    opacity: 0.4,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgStar7,
                                      height: 7.adaptSize,
                                      width: 7.adaptSize,
                                      radius: BorderRadius.circular(
                                        3.h,
                                      ),
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                        right: 2.h,
                                        bottom: 20.v,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgStar4,
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                radius: BorderRadius.circular(
                                  7.h,
                                ),
                                margin: EdgeInsets.only(
                                  left: 7.h,
                                  top: 20.v,
                                  bottom: 57.v,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Payment done successfully.",
              style: CustomTextStyles.titleSmallGray900,
            ),
          ),
        ],
      ),
    );
  }
}
