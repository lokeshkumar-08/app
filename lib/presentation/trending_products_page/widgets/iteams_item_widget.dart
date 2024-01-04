import 'package:flutter/material.dart';
import 'package:lokesh_s_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class IteamsItemWidget extends StatelessWidget {
  const IteamsItemWidget({Key? key})
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
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "52,082+ Iteams ",
          style: TextStyle(
            color: appTheme.black90002,
            fontSize: 18.fSize,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {},
      ),
    );
  }
}
