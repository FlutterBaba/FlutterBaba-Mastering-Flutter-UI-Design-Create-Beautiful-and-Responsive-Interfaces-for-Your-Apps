import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// App icons.
String facebookIcon = "assets/icons/facebook.svg";
String appleIcon = "assets/icons/apple.svg";
String googleIcon = "assets/icons/google.svg";
String searchIcon = "assets/icons/search.svg";
String voiceIcon = "assets/icons/voice.svg";

//App Colors.

const Color primaryRed = Color(0xffFF5A5F);
const Color kGray = Color(0xff767676);
const Color primaryBlack = Color(0xff484848);
const Color kWhiteColor = Colors.white;

// app Images
String image1 = "assets/images/image1.png";
String image2 = "assets/images/image3.jpg";

// app fonts.
String skModernist = "Sk-Modernist";
String sfProText = "SF-Pro-Text";
String sfProDisplay = "SF-Pro-Display";

// App Theme
ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontFamily: skModernist,
      fontWeight: FontWeight.w700,
      fontSize: ScreenUtil().setSp(34),
      color: primaryBlack,
    ),
    bodySmall: TextStyle(
      letterSpacing: -0.23,
      fontFamily: sfProText,
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(15),
      color: kGray,
    ),
    bodyLarge: TextStyle(
      fontSize: ScreenUtil().setSp(28),
      color: kWhiteColor,
      letterSpacing: 0.38,
      fontWeight: FontWeight.w800,
    ),
    bodyMedium: TextStyle(
      fontFamily: sfProDisplay,
      color: primaryBlack,
      fontWeight: FontWeight.w700,
      fontSize: ScreenUtil().setSp(22),
      letterSpacing: -0.26,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shadowColor: primaryBlack,
      elevation: 0,
      minimumSize: const Size.fromHeight(54),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ScreenUtil().setSp(5)),
      ),
      backgroundColor: primaryRed,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: const OutlineInputBorder(),
    hintStyle: TextStyle(
      fontSize: ScreenUtil().setSp(15),
      fontFamily: sfProText,
      letterSpacing: -0.23,
      color: kGray,
      fontWeight: FontWeight.w400,
    ),
  ),
);
