import 'package:flutter/material.dart';

import 'package:login/ui/themes/app_colors.dart';
import 'package:login/ui/themes/app_font_families.dart';

/// Static class defining all apps typography
///
/// This class should not be edited, if custom text style is needed,
/// use FvTextStyles class, or define custom text style in a widget itself

// - asset: assets/fonts/SegoeUI/SegoeUI-Bold.ttf
//   weight: 700
// - asset: assets/fonts/SegoeUI/SegoeUI-SemiBold.ttf
//   weight: 600
// - asset: assets/fonts/SegoeUI/SegoeUI.ttf
//   weight: 400
// - asset: assets/fonts/SegoeUI/SegoeUI-Light.ttf
//   weight: 300

class MbTypography {
  MbTypography._();

  static final Typography typography = Typography(
    black: _appBlackTextTheme,
    white: _appWhiteTextTheme,
  );

  // Dark -/- White textTheme

  // 15 styles

  // -1- TextStyle? displayLarge,
  // -2- TextStyle? displayMedium,
  // -3- TextStyle? displaySmall,

  // -4- TextStyle? headlineLarge,
  // -5- TextStyle? headlineSmall,
  // -6- TextStyle? headlineMedium,

  // -7- TextStyle? titleLarge,
  // -8- TextStyle? titleMedium,
  // -9- TextStyle? titleSmall,

  // -10- TextStyle? bodyLarge,
  // -11- TextStyle? bodyMedium,
  // -12- TextStyle? bodySmall,

  // -13- TextStyle? labelLarge,
  // -14- TextStyle? labelMedium,
  // -15- TextStyle? labelSmall,

  // final textTheme = Theme.of(context).textTheme.titleMedium!;

  // Typography used on light theme, when backgrounds are light
  static const TextTheme _appBlackTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBlack,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    displayMedium: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBlack,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
    // displaySmall: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontWeight: FontWeight.w700,
    //   fontSize: 16,
    // ),
    // ----------------------------------- //
    headlineLarge: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBlack,
      fontWeight: FontWeight.w600,
      fontSize: 17,
    ),
    headlineMedium: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBlack,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    // headlineSmall: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontWeight: FontWeight.w600,
    //   fontSize: 24,
    // ),
    // ----------------------------------- //
    titleLarge: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBlack,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBlack,
      fontWeight: FontWeight.w400,
      fontSize: 13,
    ),
    titleSmall: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBlack,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    // ----------------------------------- //
    bodyLarge: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBlack,
      fontWeight: FontWeight.w400,
      fontSize: 15,
    ), // textfield text color
    // ----------------------------------- //
    // bodyMedium: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontSize: 15,
    // ),
    // bodySmall: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontSize: 13,
    // ),
    // ----------------------------------- //
    // labelLarge: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontWeight: FontWeight.bold,
    //   fontSize: 17,
    // ),
    // labelMedium: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontWeight: FontWeight.bold,
    //   fontSize: 17,
    // ),
    // labelSmall: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    // ),
    // ----------------------------------- //
  );

  // Typography used on dark theme, when backgrounds are dark
  static const TextTheme _appWhiteTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBGwhite,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    displayMedium: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBGwhite,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
    // displaySmall: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontWeight: FontWeight.w700,
    //   fontSize: 16,
    // ),
    // ----------------------------------- //
    headlineLarge: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBGwhite,
      fontWeight: FontWeight.w600,
      fontSize: 17,
    ),
    headlineMedium: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBGwhite,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    // headlineSmall: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontWeight: FontWeight.w600,
    //   fontSize: 24,
    // ),
    // ----------------------------------- //
    titleLarge: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBGwhite,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBGwhite,
      fontWeight: FontWeight.w400,
      fontSize: 13,
    ),
    titleSmall: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBGwhite,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    // ----------------------------------- //
    bodyLarge: TextStyle(
      fontFamily: FontFamilies.segoeUi,
      color: AppColors.primaryBGwhite,
      fontWeight: FontWeight.w400,
      fontSize: 15,
    ), //
    // bodyMedium: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontSize: 15,
    // ),
    // bodySmall: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontSize: 13,
    // ),
    // ----------------------------------- //
    // labelLarge: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontWeight: FontWeight.bold,
    //   fontSize: 17,
    // ),
    // labelMedium: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    //   fontWeight: FontWeight.bold,
    //   fontSize: 17,
    // ),
    // labelSmall: TextStyle(
    //   fontFamily: FontFamilies.segoeUi,
    //   color: AppColors.primaryBlack,
    // ),
    // ----------------------------------- //
  );
}

class CustomTextExtension extends ThemeExtension<CustomTextExtension> {
  // fontweight 700
  final TextStyle bold24primaryBlack;
  final TextStyle bold20primaryBlack;
  final TextStyle bold13primaryYellow;
  final TextStyle bold13primaryBGwhite;
  final TextStyle bold12additionalColor;

  // fontweight 600
  final TextStyle medium17primaryBlack;
  final TextStyle medium14primaryBlack;
  final TextStyle medium14additionalColor;

  final TextStyle medium13primaryBlack;
  final TextStyle medium13textGray;

  final TextStyle medium12white;
  final TextStyle medium12textGray;

  // fontweight 400
  final TextStyle small24additionalColor;
  final TextStyle small16primaryBlack;
  final TextStyle small15textGray;

  final TextStyle small14primaryBlack;
  final TextStyle small14mainGrayDark;
  final TextStyle small14additionalColor;
  final TextStyle small14primaryTextGray;

  final TextStyle small13primaryBlack;
  final TextStyle small13success;
  final TextStyle small13error;
  final TextStyle small13textGray;
  final TextStyle small13mainGrayDark;
  final TextStyle small13additionalColor;

  final TextStyle small12primaryGray;
  final TextStyle small12textGray;
  final TextStyle small12mainGrayDark;
  final TextStyle small12white;
  final TextStyle small12primaryYellow;

  final TextStyle small10primaryBlack;
  final TextStyle small9white;

  CustomTextExtension({
    required this.bold24primaryBlack,
    required this.bold20primaryBlack,
    required this.bold13primaryYellow,
    required this.bold13primaryBGwhite,
    required this.bold12additionalColor,
    required this.medium17primaryBlack,
    required this.medium14primaryBlack,
    required this.medium14additionalColor,
    required this.medium13primaryBlack,
    required this.medium13textGray,
    required this.medium12white,
    required this.medium12textGray,
    required this.small24additionalColor,
    required this.small16primaryBlack,
    required this.small15textGray,
    required this.small14primaryBlack,
    required this.small14mainGrayDark,
    required this.small14additionalColor,
    required this.small14primaryTextGray,
    required this.small13primaryBlack,
    required this.small13success,
    required this.small13error,
    required this.small13textGray,
    required this.small13mainGrayDark,
    required this.small13additionalColor,
    required this.small12primaryGray,
    required this.small12textGray,
    required this.small12mainGrayDark,
    required this.small12white,
    required this.small12primaryYellow,
    required this.small10primaryBlack,
    required this.small9white,
  });

  @override
  ThemeExtension<CustomTextExtension> copyWith() {
    return CustomTextExtension(
      bold24primaryBlack: bold24primaryBlack,
      bold20primaryBlack: bold20primaryBlack,
      bold13primaryYellow: bold13primaryYellow,
      bold13primaryBGwhite: bold13primaryBGwhite,
      bold12additionalColor: bold12additionalColor,
      medium17primaryBlack: medium17primaryBlack,
      medium14primaryBlack: medium14primaryBlack,
      medium14additionalColor: medium14additionalColor,
      medium13primaryBlack: medium13primaryBlack,
      medium13textGray: medium13textGray,
      medium12white: medium12white,
      medium12textGray: medium12textGray,
      small24additionalColor: small24additionalColor,
      small16primaryBlack: small16primaryBlack,
      small15textGray: small15textGray,
      small14primaryBlack: small14primaryBlack,
      small14mainGrayDark: small14mainGrayDark,
      small14additionalColor: small14additionalColor,
      small14primaryTextGray: small14primaryTextGray,
      small13primaryBlack: small13primaryBlack,
      small13success: small13success,
      small13error: small13error,
      small13textGray: small13textGray,
      small13mainGrayDark: small13mainGrayDark,
      small13additionalColor: small13additionalColor,
      small12primaryGray: small12primaryGray,
      small12textGray: small12textGray,
      small12mainGrayDark: small12mainGrayDark,
      small12white: small12white,
      small12primaryYellow: small12primaryYellow,
      small10primaryBlack: small10primaryBlack,
      small9white: small9white,
    );
  }

  @override
  ThemeExtension<CustomTextExtension> lerp(
      covariant ThemeExtension<CustomTextExtension>? other, double t) {
    return CustomTextExtension(
      bold24primaryBlack: bold24primaryBlack,
      bold20primaryBlack: bold20primaryBlack,
      bold13primaryYellow: bold13primaryYellow,
      bold13primaryBGwhite: bold13primaryBGwhite,
      bold12additionalColor: bold12additionalColor,
      medium17primaryBlack: medium17primaryBlack,
      medium14primaryBlack: medium14primaryBlack,
      medium14additionalColor: medium14additionalColor,
      medium13primaryBlack: medium13primaryBlack,
      medium13textGray: medium13textGray,
      medium12white: medium12white,
      medium12textGray: medium12textGray,
      small24additionalColor: small24additionalColor,
      small16primaryBlack: small16primaryBlack,
      small15textGray: small15textGray,
      small14primaryBlack: small14primaryBlack,
      small14mainGrayDark: small14mainGrayDark,
      small14additionalColor: small14additionalColor,
      small14primaryTextGray: small14primaryTextGray,
      small13primaryBlack: small13primaryBlack,
      small13success: small13success,
      small13error: small13error,
      small13textGray: small13textGray,
      small13mainGrayDark: small13mainGrayDark,
      small13additionalColor: small13additionalColor,
      small12primaryGray: small12primaryGray,
      small12textGray: small12textGray,
      small12mainGrayDark: small12mainGrayDark,
      small12white: small12white,
      small12primaryYellow: small12primaryYellow,
      small10primaryBlack: small10primaryBlack,
      small9white: small9white,
    );
  }
}

CustomTextExtension lightTextExtension() {
  return CustomTextExtension(
    // fontweight 700
    bold24primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    bold20primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    bold13primaryYellow: const TextStyle(
      color: AppColors.primaryYellow,
      fontSize: 13,
      fontWeight: FontWeight.w700,
    ),
    bold13primaryBGwhite: const TextStyle(
      color: AppColors.primaryBGwhite,
      fontSize: 13,
      fontWeight: FontWeight.w700,
    ),
    bold12additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),

    // fontweight 600
    medium17primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    medium14primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    medium14additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    medium13primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 13,
      fontWeight: FontWeight.w600,
    ),
    medium13textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 13,
      fontWeight: FontWeight.w600,
    ),
    medium12white: const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    medium12textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),

    // fontweight 400
    small24additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    small16primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    small15textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    small14primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    small14mainGrayDark: const TextStyle(
      color: AppColors.mainGrayDark,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    small14additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    small14primaryTextGray: const TextStyle(
      color: AppColors.primaryTextGray,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    small13primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13success: const TextStyle(
      color: AppColors.successfullyState,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13error: const TextStyle(
      color: AppColors.errorState,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13mainGrayDark: const TextStyle(
      color: AppColors.mainGrayDark,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small12primaryGray: const TextStyle(
      color: AppColors.primaryTextGray,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small12textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small12mainGrayDark: const TextStyle(
      color: AppColors.mainGrayDark,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small12white: const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small12primaryYellow: const TextStyle(
      color: AppColors.primaryYellow,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small10primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
    small9white: const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 9,
      fontWeight: FontWeight.w400,
    ),
  );
}

CustomTextExtension darkTextExtension() {
  return CustomTextExtension(
    // fontweight 700
    bold24primaryBlack: const TextStyle(
      color: AppColors.primaryBGwhite,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    bold20primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    bold13primaryYellow: const TextStyle(
      color: AppColors.primaryYellow,
      fontSize: 13,
      fontWeight: FontWeight.w700,
    ),
    bold13primaryBGwhite: const TextStyle(
      color: AppColors.primaryBGwhite,
      fontSize: 13,
      fontWeight: FontWeight.w700,
    ),
    bold12additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),

    // fontweight 600
    medium17primaryBlack: const TextStyle(
      color: AppColors.primaryBGwhite,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    medium14primaryBlack: const TextStyle(
      color: AppColors.primaryBGwhite,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    medium14additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    medium13primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 13,
      fontWeight: FontWeight.w600,
    ),
    medium13textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 13,
      fontWeight: FontWeight.w600,
    ),
    medium12white: const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    medium12textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),

    // fontweight 400
    small24additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    small16primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    small15textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    small14primaryBlack: const TextStyle(
      color: AppColors.primaryBGwhite,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    small14mainGrayDark: const TextStyle(
      color: AppColors.mainGrayDark,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    small14additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    small14primaryTextGray: const TextStyle(
      color: AppColors.primaryTextGray,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    small13primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13success: const TextStyle(
      color: AppColors.successfullyState,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13error: const TextStyle(
      color: AppColors.errorState,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13mainGrayDark: const TextStyle(
      color: AppColors.mainGrayDark,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small13additionalColor: const TextStyle(
      color: AppColors.additionalColor,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    small12primaryGray: const TextStyle(
      color: AppColors.primaryTextGray,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small12textGray: const TextStyle(
      color: AppColors.textGrayInactive,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small12mainGrayDark: const TextStyle(
      color: AppColors.mainGrayDark,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small12white: const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small12primaryYellow: const TextStyle(
      color: AppColors.primaryYellow,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    small10primaryBlack: const TextStyle(
      color: AppColors.primaryBlack,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
    small9white: const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 9,
      fontWeight: FontWeight.w400,
    ),
  );
}
