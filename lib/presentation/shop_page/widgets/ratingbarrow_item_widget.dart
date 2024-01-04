import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class RatingbarrowItemWidget extends StatelessWidget {
  const RatingbarrowItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.only(
          top: 5.v,
          right: 4.h,
          bottom: 5.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Nearest Store",
          style: TextStyle(
            color: appTheme.gray60001,
            fontSize: 10.fSize,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgComponent1Gray60001,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(right: 4.h),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.gray60001.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray60001,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            4.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
