import 'package:flutter/material.dart';

/// Base Colors
const Color kWhiteColor = Colors.white;
const Color kBlackColor = Color(0xFF2D313A);
const Color kTransparentColor = Colors.transparent;
const Color kLightGreyColor = Color(0xFFF7F9FC);
const Color kSemiGreyColor = Color(0x55444444);
const Color kMediumGreyColor = Color(0xFF667085);
const Color kDarkGreyColor = Color(0xFF444444);
const Color kAccentGreyColor = Color(0xFFDCE0E7);
const Color kLightPurpleColor = Color(0xFFA530C7);
const Color kMediumPurpleColor = Color(0xFF5E2D9B);
const Color kDarkPurpleColor = Color(0xFF402F8B);
const Color kOrangeColor = Color(0xFFE77301);
const Color kCyanColor = Color(0xFF22D4D7);
const Color knewSecondaryColor = Color(0xFF45C4CC);
const Color kSuccessColor = Colors.green;
const Color kErrorColor = Colors.red;
const Color kRedAccentColor = Colors.redAccent;
const Color kDeleteIconBackgroundColor = Color(0xFFD93636);
const Color kBlue = Color(0xFF52B6B6);
const Color kGreenColor = Color(0xFF149440);
const Color kApprovalColor=Color(0xFF0F79A7);
const Color kIconMintColor=Color(0xFF0F79A7);
const Color kGreyColor=Color(0xFFACB5BE);
const Color kTextVariantColor=Color(0xFF697485);
const Color kFieldBorderColor=Color(0xFFF2F4F7);
const Color kFieldBackgroundColor=Color(0xFFF9FAFB);
const Color kLightGrayColor=Color(0xFFD3DAE1);
const Color kCircleTextColor=Color(0xFFD3DAE1);
const Color kGray50Color=Color(0xFFF0F1F3);
const Color kOrangeLight = Color(0xFFFCFBF8);
const Color kOrange = Color(0xFFE36D19);
const Color kGreyLight = Color(0xFFF9FAFB);
const Color kTitleGrey = Color(0xFF697484);
 Color kCardBackGroundColor = Colors.black12.withOpacity(.3);
const Color kDividerColor = Color(0xFFEEF1F6);
const Color kIconGreyColor=Color(0xFF697485);
const Color kIconBlack=Color(0xFF2D313A);
const Color kBackgroundColorWhite=Colors.white;
const Color kRangeSliderColor = Color(0xFFEEF1F6);
const Color kBlue500Color = Color(0xFF3250FF);
const Color kGreen600Color = Color(0xFF1A9882);
const Color kGray200Color = Color(0xFFE1E9F0);
const Color kRed500Color = Color(0xFFEB3D4D);





/// Color scheme
const Color kPrimaryColor = Colors.blue;
const Color bottomItemDisableColor = Color(0xFF9DA6B5);
const Color kSecondaryColor = kCyanColor;
const Color kTertiaryColor = kOrangeColor;

/// Text colors
const Color kLightTextColor = kLightGreyColor;
const Color kDarkTextColor = kDarkGreyColor;
const Color kPrimaryTextColor = kDarkTextColor;
const Color kDisabledTextColor = kSemiGreyColor;
const Color kHintTextColor = kMediumGreyColor;
const Color kErrorTextColor = kTertiaryColor;
const Color kBlackTextColor = kBlackColor;
const Color kLiteGreenTextColor = kBlue;
const Color kBlueTextColor = Color(0xFF007AFF);
const Color kDarkRedColor = Color(0xFFA10413);



/// Buttons
const Color kDefaultButtonBgColor = kPrimaryColor;
const Color kDefaultButtonTextColor = kWhiteColor;
const Color kDefaultButtonDisabledTextColor = kLightGrayColor;
const Color kDefaultButtonDisabledBackgroundColor = kFieldBackgroundColor;


const Color kTileBgColor = kWhiteColor;

///Divider

const Color dividerColor = Color(0xFFF2F4F7);
///Card
const Color cardColor = kGreyLight;
const Color kCardColor = kGray50Color;

/// Shadows
const List<BoxShadow> kFormShadow = [
  BoxShadow(
    color: Color(0x18000000),
    offset: Offset(5.0, 15.0),
    blurRadius: 30.0,
  ),
];
const List<BoxShadow> kTileShadow = [
  BoxShadow(
    color: Color(0x22000000),
    offset: Offset(0.0, 2.0),
    blurRadius: 10.0,
  ),
];
const List<BoxShadow> kSmallTileShadow = [
  BoxShadow(
    color: Color(0x18000000),
    offset: Offset(0.0, 1.0),
    blurRadius: 5.0,
  ),
];

 Gradient homeGradient = LinearGradient(
   begin: Alignment.topCenter,
   end: Alignment.bottomCenter,
   colors: [
     Colors.transparent,
     Colors.white.withOpacity(0.1),
     Colors.white.withOpacity(0.3),
     Colors.white.withOpacity(0.5),
     Colors.white.withOpacity(0.7),
     Colors.white,
     Colors.white,
     Colors.white,
   ],
 );