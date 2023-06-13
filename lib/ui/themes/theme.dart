import 'package:flutter/material.dart';
import 'package:login/ui/themes/app_colors.dart';
import 'package:login/ui/themes/app_font_families.dart';
import 'package:login/ui/themes/app_typography.dart';
import 'package:login/ui/themes/app_common_size.dart';

class AppThemes {
  const AppThemes._();

  // static final ThemeData lightTheme = ThemeData(
  //   primaryColor: Color(0xFFF3F3F3),
  //   scaffoldBackgroundColor: Color(0xFFF3F3F3),
  //   colorScheme: ColorScheme(
  //     brightness: Brightness.light,
  //     primary: primaryDark,
  //     onPrimary: primaryDark,
  //     secondary: textFieldBgLight,
  //     onSecondary: textFieldBgLight,
  //     error: error,
  //     onError: error,
  //     background: primaryLight,
  //     onBackground: primaryLight,
  //     surface: primaryGrey,
  //     onSurface: primaryDark),
  //   appBarTheme: AppBarTheme(
  //       color: primaryLight,
  //       iconTheme: IconThemeData(color: primaryDark)),
  //   hintColor: Color(0xFF9C9999),
  // );
  
  // static ThemeData darkTheme = ThemeData(
  //   // scaffoldBackgroundColor: Color(0xFF18191E),
  //   colorScheme: ColorScheme(
  //     brightness: Brightness.light,
  //     primary: primaryLight,
  //     onPrimary: primaryLight,
  //     secondary: textFieldBgDark,
  //     onSecondary: textFieldBgDark,
  //     error: error,
  //     onError: error,
  //     background: primaryDark,
  //     onBackground: primaryDark,
  //     surface: primaryGrey,
  //     onSurface: primaryGrey),
  //   appBarTheme: AppBarTheme(
  //       color: primaryDark,
  //       iconTheme: IconThemeData(color: primaryDark)),
  //   hintColor: Color(0xFF9C9999),
  //   );


  // static Color primaryLight = Color(0xFFF3F3F3);
  // static Color primaryGrey = Color(0xFF878F90);
  // static Color primaryBlue = Color(0xFF52B3C1);
  // static Color primaryDark = Color(0xFF18191E);

  // static Color secondaryBlack = Color(0xFF121212);
  // static Color secondaryYellow = Color(0xFFFABF00);
  // static Color secondaryWhite = Color(0xFFFFFFFF);
  // static Color secondaryGrey = Color(0xFF717879);

  // static Color error = Colors.red;
  
  // static Color white = Colors.white;


  // static Color textFieldBgDark = Color(0xFF1F2025);
  // static Color textFieldBgLight = Color(0xFF878F90);

  // static Color elevatedButtonColorDark = Color(0xFF343643);
  // static Color elevatedButtonColorLight = Color(0xFF343643);

  static final ThemeData lightTheme = ThemeData(
    extensions: [
      lightTextExtension(),
    ],
    useMaterial3: true,
    colorScheme: _getColorScheme(),
    appBarTheme: _getAppBarTheme(),
    scaffoldBackgroundColor: AppColors.primaryBGwhite,
    typography: MbTypography.typography,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primaryBlack,
    ),
    inputDecorationTheme: _getInputDecorationTheme(),
    elevatedButtonTheme: _getElevatedButtonTheme(),
    textButtonTheme: _getTextButtonTheme(),
    bottomSheetTheme: _getBottomSheetTheme(),
    tabBarTheme: _getTabBarTheme(),
    switchTheme: _getSwitchTheme(),
    cardTheme: _getCardTheme(),
    dialogTheme: _getDialogTheme(),
    splashFactory: InkSplash.splashFactory,
  );

  static final ThemeData darkTheme = ThemeData(
    extensions: [
      darkTextExtension(),
    ],
    useMaterial3: true,
    colorScheme: _getDarkColorScheme(),
    appBarTheme: _getDarkAppBarTheme(),
    scaffoldBackgroundColor: AppColors.blkVerBg,
    typography: MbTypography.typography,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.whiteColor,
    ),
    inputDecorationTheme: _getDarkInputDecorationTheme(),
    elevatedButtonTheme: _getElevatedButtonDarkTheme(),
    textButtonTheme: _getTextDarkButtonTheme(),
    bottomSheetTheme: _getDarkBottomSheetTheme(),
    tabBarTheme: _getDarkThemeTabBar(),
    switchTheme: _getDarkSwitchTheme(),
    cardTheme: _getDarkCardTheme(),
    dialogTheme: _getDarkDialogTheme(),
    splashFactory: InkSplash.splashFactory,
  );


  static ColorScheme _getColorScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.whiteColor,
      onPrimary: AppColors.whiteColor,
      primaryContainer: AppColors.whiteColor,
      onPrimaryContainer: AppColors.whiteColor,
      secondaryContainer: AppColors.forElement,
      onSecondaryContainer: AppColors.primaryBGwhite,
      secondary: AppColors.whiteColor,
      onSecondary: AppColors.whiteColor,
      background: AppColors.whiteColor,
      onBackground: AppColors.whiteColor,
      surface: AppColors.whiteColor,
      onSurface: AppColors.whiteColor,
      error: AppColors.whiteColor,
      onError: AppColors.whiteColor,
      inverseSurface: AppColors.primaryBGwhite,
      onInverseSurface: AppColors.primaryBGwhite,
      inversePrimary: AppColors.primaryBGwhite,
      outline: AppColors.bgScreen,
    );
  }

  static ColorScheme _getDarkColorScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryBlack,
      onPrimary: AppColors.primaryBlack,
      primaryContainer: AppColors.blkVerCards,
      onPrimaryContainer: AppColors.blkVerCards,
      secondaryContainer: AppColors.bgScreen,
      onSecondaryContainer: AppColors.mainGrayDark,
      secondary: AppColors.primaryBlack,
      onSecondary: AppColors.primaryBlack,
      error: AppColors.errorState,
      onError: AppColors.errorState,
      background: AppColors.primaryBlack,
      onBackground: AppColors.primaryBlack,
      surface: AppColors.primaryBlack,
      onSurface: AppColors.primaryBlack,
      inverseSurface: AppColors.primaryBlack,
      onInverseSurface: AppColors.primaryBlack,
      inversePrimary: AppColors.primaryBlack,
      outline: AppColors.blkVerText,
    );
  }

  // Text input fields decoration themes
  static InputDecorationTheme _getInputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.whiteColor,
      hintStyle: const TextStyle(
        color: AppColors.textGrayInactive,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.forElement,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.forElement,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.forElement,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.primaryYellow,
        ),
      ),
      errorStyle: const TextStyle(
        color: AppColors.errorState,
        fontSize: 13.0,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.errorState,
        ),
      ),
    );
  }

  static InputDecorationTheme _getDarkInputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.bgInputBlk,
      hintStyle: const TextStyle(
        color: AppColors.blkVerText,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.primaryTextGray,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.primaryYellow,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.primaryTextGray,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.errorState,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.primaryTextGray,
        ),
      ),
    );
  }

  // Elevated Button themes
  static ElevatedButtonThemeData _getElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith(
          (_) => const Size.fromHeight(CommonSize.buttonHeight),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.forElement;
            } else if (states.contains(MaterialState.pressed)) {
              return AppColors.primaryYellow;
            }
            return AppColors.primaryYellow;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return Colors.white;
          },
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryBlack,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(CommonSize.indent),
          ),
        ),
        // overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
    );
  }

  static ElevatedButtonThemeData _getElevatedButtonDarkTheme() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith(
          (_) => const Size.fromHeight(CommonSize.buttonHeight),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.blkInactiveBtnBg;
            } else if (states.contains(MaterialState.pressed)) {
              return AppColors.primaryYellow;
            }
            return AppColors.primaryYellow;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return Colors.white;
          },
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryBlack,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(CommonSize.indent),
          ),
        ),
        // overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
    );
  }



  // Text Button themes
  static TextButtonThemeData _getTextButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        foregroundColor: AppColors.additionalColor,
        textStyle: const TextStyle(
          fontFamily: FontFamilies.segoeUi,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  static TextButtonThemeData _getTextDarkButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        foregroundColor: AppColors.primaryYellow,
        textStyle: const TextStyle(
          fontFamily: FontFamilies.segoeUi,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  static BottomSheetThemeData _getBottomSheetTheme() {
    return const BottomSheetThemeData(
      backgroundColor: AppColors.primaryBGwhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            // topLeft: Radius.circular(Dimensions.bottomSheetRadius),
            // topRight: Radius.circular(Dimensions.bottomSheetRadius),
            ),
      ),
    );
  }

  static BottomSheetThemeData _getDarkBottomSheetTheme() {
    return const BottomSheetThemeData(
      backgroundColor: AppColors.primaryBlack,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            // topLeft: Radius.circular(Dimensions.bottomSheetRadius),
            // topRight: Radius.circular(Dimensions.bottomSheetRadius),
            ),
      ),
    );
  }

  static TabBarTheme _getTabBarTheme() {
    return TabBarTheme(
      indicator: const BoxDecoration(
        // borderRadius: BorderRadius.circular(Dimensions.tabBarIndicatorRadius),
        color: AppColors.primaryYellow,
      ),
      labelStyle: const TextStyle(
        fontFamily: FontFamilies.segoeUi,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      labelColor: AppColors.primaryBGwhite,
      unselectedLabelStyle: const TextStyle(
        fontFamily: FontFamilies.segoeUi,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      unselectedLabelColor: AppColors.forElement,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
    );
  }

  static TabBarTheme _getDarkThemeTabBar() {
    return TabBarTheme(
      indicator: const BoxDecoration(
        // borderRadius: BorderRadius.circular(Dimensions.tabBarIndicatorRadius),
        color: AppColors.primaryYellow,
      ),
      labelStyle: const TextStyle(
        // fontFamily: FvFontFamilies.ttFirsFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      labelColor: AppColors.primaryBGwhite,
      unselectedLabelStyle: const TextStyle(
        // fontFamily: FvFontFamilies.ttFirsFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      unselectedLabelColor: AppColors.primaryBlack,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
    );
  }

  static AppBarTheme _getAppBarTheme() {
    return const AppBarTheme(
      scrolledUnderElevation: 0.0,
      backgroundColor: AppColors.primaryBGwhite,
      foregroundColor: AppColors.primaryBlack,
    );
  }

  static AppBarTheme _getDarkAppBarTheme() {
    return const AppBarTheme(
      scrolledUnderElevation: 0.0,
      backgroundColor: AppColors.blkVerBg,
      foregroundColor: AppColors.primaryBGwhite,
    );
  }

  static CardTheme _getCardTheme() {
    return const CardTheme(
      elevation: 6,
      color: AppColors.primaryBGwhite,
      surfaceTintColor: Colors.white,
      shadowColor: AppColors.lightShadowColor,
      shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.circular(Dimensions.cardRadius),
          ),
    );
  }

  static CardTheme _getDarkCardTheme() {
    return const CardTheme(
      elevation: 6,
      color: AppColors.blkVerCards,
      // surfaceTintColor: AppColors.darkCardColor,
      shadowColor: AppColors.darkShadowColor,
      shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.circular(Dimensions.cardRadius),
          ),
    );
  }

  static _getDialogTheme() {
    return const DialogTheme(
      backgroundColor: AppColors.primaryBGwhite,
      shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.all(
          //   Radius.circular(Dimensions.cardRadius),
          // ),
          ),
    );
  }

  static _getDarkDialogTheme() {
    return const DialogTheme(
      backgroundColor: AppColors.primaryBlack,
      shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.all(
          //   Radius.circular(Dimensions.cardRadius),
          // ),
          ),
    );
  }

  // static ButtonStyle buttonDarkSecondaryStyle = ButtonStyle(
  //   shape: MaterialStateProperty.all(
  //     RoundedRectangleBorder(
  //       // borderRadius: BorderRadius.circular(
  //       //   Dimensions.buttonBorderRadius,
  //       // ),
  //       side: const BorderSide(color: AppColors.secondaryDarkBeigeColor),
  //     ),
  //   ),
  //   backgroundColor:
  //       MaterialStateProperty.all<Color>(AppColors.primaryDarkPurpleColor),
  //   foregroundColor: MaterialStateProperty.resolveWith<Color>(
  //     (Set<MaterialState> states) {
  //       if (states.contains(MaterialState.disabled)) {
  //         return AppColors.disabledButtonTextDarkColor;
  //       }
  //       return AppColors.secondaryDarkBeigeColor;
  //     },
  //   ),
  //   // minimumSize: MaterialStateProperty.all(const Size(
  //   //   double.infinity,
  //   //   Dimensions.buttonHeight,
  //   // )),
  // );

  static _getSwitchTheme() {
    return SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.primaryBGwhite;
          }
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryBGwhite;
          }
          return AppColors.primaryBGwhite;
        },
      ),
      trackColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.textGrayInactive;
          }
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryYellow;
          }
          return AppColors.primaryYellow;
        },
      ),
    );
  }

  static _getDarkSwitchTheme() {
    return SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.blkVerBg;
          }
          if (states.contains(MaterialState.selected)) {
            return AppColors.blkVerBg;
          }
          return AppColors.blkVerBg;
        },
      ),
      trackColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.textGrayInactive;
          }
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryYellow;
          }
          return AppColors.primaryYellow;
        },
      ),
    );
  }


}


