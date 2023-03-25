import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/styles_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.black,
    primaryColorLight: ColorManager.lightGrey,
    primaryColorDark: ColorManager.black54,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.black54,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: SizeManager.s4,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.black,
      elevation: SizeManager.s4,
      shadowColor: ColorManager.black54,
      titleTextStyle: getRegularTextStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.black,
      splashColor: ColorManager.black54,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularTextStyle(
          color: ColorManager.white,
        ),
        backgroundColor: ColorManager.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizeManager.s12,
          ),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: getSemiBoldTextStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s16,
      ),
      headline2: getRegularTextStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
      headline3: getBoldTextStyle(
        color: ColorManager.black,
        fontSize: FontSize.s16,
      ),
      headline4: getRegularTextStyle(
        color: ColorManager.black,
        fontSize: FontSize.s14,
      ),
      headline5: getBoldTextStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
      headlineLarge: getBoldTextStyle(
        color: ColorManager.black,
        fontSize: FontSize.s30,
      ),
      subtitle1: getMediumTextStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.s14,
      ),
      subtitle2: getMediumTextStyle(
        color: ColorManager.black,
        fontSize: FontSize.s14,
      ),
      bodyText2: getMediumTextStyle(
        color: ColorManager.lightGrey,
      ),
      caption: getRegularTextStyle(
        color: ColorManager.grey1,
      ),
      bodyText1: getRegularTextStyle(
        color: ColorManager.grey,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(
        PaddingManager.p8,
      ),
      hintStyle: getRegularTextStyle(
        color: ColorManager.grey1,
      ),
      labelStyle: getMediumTextStyle(
        color: ColorManager.darkGrey,
      ),
      errorStyle: getRegularTextStyle(
        color: ColorManager.error,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: SizeManager.s1_5,
        ),
        borderRadius: BorderRadius.circular(
          SizeManager.s8,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.black,
          width: SizeManager.s1_5,
        ),
        borderRadius: BorderRadius.circular(
          SizeManager.s8,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: SizeManager.s1_5,
        ),
        borderRadius: BorderRadius.circular(
          SizeManager.s8,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.black,
          width: SizeManager.s1_5,
        ),
        borderRadius: BorderRadius.circular(
          SizeManager.s8,
        ),
      ),
    ),
  );
}
