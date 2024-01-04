import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 189.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle48,
            height: 189.v,
            width: 343.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "50-40% OFF",
                    style: CustomTextStyles.titleLargeBold_1,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "Now in (product)",
                    style: CustomTextStyles.bodySmallWhiteA70001,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "All colours",
                    style: CustomTextStyles.bodySmallWhiteA70001,
                  ),
                  SizedBox(height: 11.v),
                  CustomOutlinedButton(
                    height: 32.v,
                    width: 100.h,
                    text: "Shop Now",
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowright,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
