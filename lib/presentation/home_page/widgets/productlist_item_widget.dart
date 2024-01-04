import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  const ProductlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA70001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 142.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 100.v,
            width: 142.h,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 113.h,
            margin: EdgeInsets.only(left: 4.h),
            child: Text(
              "IWC Schaffhausen\n2021 Pilot's Watch \"SIHH 2019\" 44mm",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "₹650",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                Text(
                  "₹1599",
                  style: CustomTextStyles.bodySmallBluegray400,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "60% off",
                    style: CustomTextStyles.bodySmallDeeporange300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
