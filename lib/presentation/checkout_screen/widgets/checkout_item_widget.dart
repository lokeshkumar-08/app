import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class CheckoutItemWidget extends StatelessWidget {
  const CheckoutItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 431.v,
      child: VerticalDivider(
        width: 6.h,
        thickness: 6.v,
        color: appTheme.gray20001,
      ),
    );
  }
}
