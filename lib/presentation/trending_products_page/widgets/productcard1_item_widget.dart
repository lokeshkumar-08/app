import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';
import 'package:lokesh_s_e_commerce/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  const Productcard1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack90002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashNovnxxmdni0,
            height: 136.v,
            width: 164.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Black Winter...",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            width: 137.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Text(
              "Autumn And Winter Casual cotton-padded jacket...",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall10.copyWith(
                height: 1.60,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "₹499",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Row(
              children: [
                CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: 0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "6,890",
                    style: CustomTextStyles.bodySmallOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
