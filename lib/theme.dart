import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kPrimaryColor = Color(0xFF1B383A);
const kSecondaryColor = Color(0xFF59706F);
const kDarkGreyColor = Color(0xFFA8A8A8);
const kWhiteColor = Color(0xFFFFFFFF);
const kZambeziColor = Color(0xFF5B5B5B);
const kBlackColor = Color(0xFF272726);
const kTextFieldColor = Color(0xFF979797);
const kAppBarColor = Color(0xFF414A4D);

const kDefaultPadding = EdgeInsets.symmetric(horizontal: 30);

TextStyle titleText = const TextStyle(
  color: kPrimaryColor,
  fontFamily: 'Poppins', 
  fontSize: 32, 
  fontWeight: FontWeight.w800);

TextStyle secondTitleText = const TextStyle(
  color: kPrimaryColor,
  fontFamily: 'Poppins', 
  fontSize: 26, 
  fontWeight: FontWeight.w700);

TextStyle subTitle = const TextStyle(
  color: kSecondaryColor,
  fontFamily: 'Poppins', 
  fontSize: 18, 
  fontWeight: FontWeight.w600);

TextStyle subLineText = const TextStyle(
  color: kSecondaryColor,
  fontFamily: 'Poppins', 
  fontSize: 14, 
  fontWeight: FontWeight.w500);

TextStyle miniLineText = const TextStyle(
  color: kPrimaryColor,
  fontFamily: 'Poppins', 
  fontSize: 12, 
  fontWeight: FontWeight.w400);

TextStyle textButton = const TextStyle(
  color: kBlackColor,
  fontFamily: 'Poppins',
  fontSize: 18,
  fontWeight: FontWeight.w700);

TextStyle textLightButton = const TextStyle(
  color: kBlackColor,
  fontFamily: 'Poppins',
  fontSize: 14,
  fontWeight: FontWeight.w500);

TextStyle paratext = const TextStyle(
  color: kBlackColor,
  fontFamily: 'Poppins',
  fontSize: 14,
  fontWeight: FontWeight.w400);


//Profile Screen
const kSpacingUnit = 10;

const kDarkPrimaryColor = Color(0xFF212121);
const kDarkSecondaryColor = Color(0xFF373737);
const kLightPrimaryColor = Color(0xFFFFFFFF);
const kLightSecondaryColor = Color(0xFFF3F7FB);
const kAccentColor = Color(0xFFFFC107);

final kTitleTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.7),
  fontWeight: FontWeight.w600,
);

final kCaptionTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.3),
  fontWeight: FontWeight.w100,
);

final kButtonTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
  fontWeight: FontWeight.w400,
  color: kDarkPrimaryColor,
);

final kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'SFProText',
  primaryColor: kDarkPrimaryColor,
  canvasColor: kDarkPrimaryColor,
  backgroundColor: kDarkSecondaryColor,
  iconTheme: ThemeData.dark().iconTheme.copyWith(
        color: kLightSecondaryColor,
      ),
  textTheme: ThemeData.dark().textTheme.apply(
        fontFamily: 'SFProText',
        bodyColor: kLightSecondaryColor,
        displayColor: kLightSecondaryColor,
      ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
);

final kLightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'SFProText',
  primaryColor: kLightPrimaryColor,
  canvasColor: kLightPrimaryColor,
  backgroundColor: kLightSecondaryColor,
  iconTheme: ThemeData.light().iconTheme.copyWith(
        color: kDarkSecondaryColor,
      ),
  textTheme: ThemeData.light().textTheme.apply(
        fontFamily: 'SFProText',
        bodyColor: kDarkSecondaryColor,
        displayColor: kDarkSecondaryColor,
      ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
);


