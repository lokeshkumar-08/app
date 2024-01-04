import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class TrendingproductsItemWidget extends StatelessWidget {
  const TrendingproductsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA70001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 170.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage15124x170,
            height: 124.v,
            width: 170.h,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Women Printed Kurta",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: 153.h,
            margin: EdgeInsets.only(left: 4.h),
            child: Text(
              "Neque porro quisquam est qui dolorem ipsum quia",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall10.copyWith(
                height: 1.60,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "₹1500",
                      style: theme.textTheme.labelLarge,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "₹2499",
                        style: CustomTextStyles.bodySmallGray40003,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 16.v,
                  ),
                  child: Text(
                    "40%Off",
                    style: CustomTextStyles.bodySmallDeeporange300,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: 0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "56890",
                    style: CustomTextStyles.bodySmallOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
