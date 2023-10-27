import 'package:flutter/material.dart';
import 'package:simple_todo_app/common/utilities/colors.dart';


/// Font family
const String kLTRFontFamily = 'Cairo';
const String kRTLFontFamily = 'Cairo';
const String kMainFontFamily = kRTLFontFamily;

/// Special text styles (not included in the theme)
/// 1. Normal text styles
const kTinySize = 10.0;
const kSmallerSize = 12.0;
const kSmallSize = 14.0;
const kNormalSize = 16.0;
const kNormalSize18 = 18.0;
const kBigSize = 20.0;
const kBiggerSize = 24.0;
const kSize30 = 30.0;

Map<double, TextStyle> kHairlineStyle = {
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w100,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w100,
    fontSize: kNormalSize,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w100,
    fontSize: kBigSize,
  ),
};

Map<double, TextStyle> kThinStyle = {
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w200,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w200,
    fontSize: kNormalSize,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w200,
    fontSize: kBigSize,
  ),
};

Map<double, TextStyle> kLightStyle = {
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w300,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w300,
    fontSize: kNormalSize,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w300,
    fontSize: kBigSize,
  ),
};

Map<double, TextStyle> kRegularStyle = {
  kTinySize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w400,
    fontSize: kTinySize,
  ),
  kSmallerSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w400,
    fontSize: kTinySize,
  ),
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w400,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w400,
    fontSize: kNormalSize,
  ),
  kNormalSize18: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w400,
    fontSize: kNormalSize18,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w400,
    fontSize: kBigSize,
  ),
};

Map<double, TextStyle> kMediumStyle = {
  kTinySize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w500,
    fontSize: kTinySize,
  ),
  kSmallerSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w500,
    fontSize: kSmallerSize,
  ),
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w500,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w500,
    fontSize: kNormalSize,
  ),
  kNormalSize18: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w500,
    fontSize: kNormalSize18,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w500,
    fontSize: kBigSize,
  ),
};

Map<double, TextStyle> kSemiBoldStyle = {
  kTinySize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: kTinySize,
  ),
  kSmallerSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: kSmallerSize,
  ),
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: kNormalSize,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: kBigSize,
  ),
};

Map<double, TextStyle> kBoldStyle = {
  kTinySize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kTinySize,
  ),
  kSmallerSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kSmallerSize,
  ),
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kNormalSize,
  ),
  kNormalSize18: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kNormalSize18,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kBigSize,
  ),
  kBiggerSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kBiggerSize,
  ),
  kSize30: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kSize30,
  ),
};

Map<double, TextStyle> kExtraBoldStyle = {
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w800,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w800,
    fontSize: kNormalSize,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w800,
    fontSize: kBigSize,
  ),
};

Map<double, TextStyle> kBlackStyle = {
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w900,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w900,
    fontSize: kNormalSize,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w900,
    fontSize: kBigSize,
  ),
};

//Doma
Map<double, TextStyle> kVeryBoldStyle = {
  kSmallSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kNormalSize,
  ),
  kBigSize: const TextStyle(
    color: kPrimaryTextColor,
    fontWeight: FontWeight.w700,
    fontSize: kBigSize,
  ),
};

Map<double, TextStyle> kSubTitleStyle = {
  kSmallerSize: const TextStyle(
    color: kTitleGrey,
    fontWeight: FontWeight.w400,
    fontSize: kSmallerSize,
  ),
  kSmallSize: const TextStyle(
    color: kTitleGrey,
    fontWeight: FontWeight.w400,
    fontSize: kSmallSize,
  ),
  kNormalSize: const TextStyle(
    color: kTitleGrey,
    fontWeight: FontWeight.w400,
    fontSize: kNormalSize,
  ),
  kBigSize: const TextStyle(
    color: kTitleGrey,
    fontWeight: FontWeight.w400,
    fontSize: kBigSize,
  ),
};

/// 4. Specific styles
TextStyle kHintStyle =
    kRegularStyle[kSmallSize]!.copyWith(color: kHintTextColor);

/// Styling theme for the application
final ThemeData gThemeData = ThemeData(
  // Fonts
  fontFamily: kMainFontFamily,

  // Colors Themes
  //primaryIconTheme: const IconThemeData(color: kPrimaryIconColor),
  canvasColor: kTransparentColor,
  //backgroundColor: kPrimaryBgColor,
  //scaffoldBackgroundColor: kPrimaryBgColor,
  primaryColor: kPrimaryColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: kSecondaryColor,
    primary: kPrimaryColor,
    brightness: Brightness.light,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: kSecondaryColor,
    selectionHandleColor: kPrimaryColor,
  ),
);
