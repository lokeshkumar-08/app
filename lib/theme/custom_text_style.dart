import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeWhiteA70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium13_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumGray10003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray10003,
      );
  static get bodyMediumGray40003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40003,
      );
  static get bodyMediumGray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyMediumPoppinsGray70001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallDeeporange300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepOrange300,
        fontSize: 10.fSize,
      );
  static get bodySmallGray40003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40003,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallGray700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 10.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallPink300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.pink300,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallRoboto => theme.textTheme.bodySmall!.roboto;
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallWhiteA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA70001,
      );
  // Display text style
  static get displaySmallWhiteA70001 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 34.fSize,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargeGray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001,
      );
  static get labelLargePlusJakartaSansPrimary =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRobotoRed600 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.red600,
      );
  static get labelLargeRobotoRed60001 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.red60001,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA70001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get labelMediumGray60001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray60001,
      );
  // Title text style
  static get titleLarge23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
      );
  static get titleLargeBlack90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack90002_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBold_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 21.fSize,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBluegray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static get titleMediumBluegray70018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 18.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray50002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50002,
        fontSize: 18.fSize,
      );
  static get titleMediumGray50003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50003,
      );
  static get titleMediumGray5000318 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50003,
        fontSize: 18.fSize,
      );
  static get titleMediumGray500SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleMediumLibreCaslonTextBlueA200 =>
      theme.textTheme.titleMedium!.libreCaslonText.copyWith(
        color: appTheme.blueA200,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_2 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_3 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallGray50003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50003,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray60002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60002,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPink300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink300,
      );
  static get titleSmallPlusJakartaSansWhiteA70001 =>
      theme.textTheme.titleSmall!.plusJakartaSans.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallWhiteA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get libreCaslonText {
    return copyWith(
      fontFamily: 'Libre Caslon Text',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
