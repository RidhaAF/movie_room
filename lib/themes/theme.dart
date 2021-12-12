import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 16.0;
double defaultRadius = 8.0;

Color primaryColor = const Color(0xFFD3180C);
Color secondaryColor = const Color(0xFFCDCFD0);
Color mutedColor = const Color(0xFF838383);
Color darkColor = const Color(0xFF090A0A);
Color darkGrayColor = const Color(0xFF1D1D1D);
Color blackColor = const Color(0xFF000000);
Color whiteColor = const Color(0xFFFFFFFF);
Color yellowColor = const Color(0XFFFFB91F);
Color backgroundColor1 = const Color(0xFF090A0A);
Color backgroundColor2 = const Color(0xFF000000);

TextStyle primaryTextStyle = GoogleFonts.inter(
  color: primaryColor,
);

TextStyle whiteTextStyle = GoogleFonts.inter(
  color: whiteColor,
);

TextStyle secondaryTextStyle = GoogleFonts.inter(
  color: secondaryColor,
);

TextStyle mutedTextStyle = GoogleFonts.inter(
  color: mutedColor,
);

TextStyle darkGrayTextStyle = GoogleFonts.inter(
  color: darkGrayColor,
);

FontWeight thin = FontWeight.w100;
FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

ButtonStyle darkGrayButtonStyle = ElevatedButton.styleFrom(
  padding: EdgeInsets.zero,
  primary: darkGrayColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(defaultRadius),
  ),
);

ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  padding: EdgeInsets.zero,
  primary: primaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(defaultRadius),
  ),
);

Border primaryBorder = Border.all(
  width: 1.0,
  color: primaryColor,
);

BoxShadow primaryBoxShadow = BoxShadow(
  color: blackColor.withOpacity(0.10),
  spreadRadius: 0,
  blurRadius: 16,
  offset: const Offset(0, 0), // changes position of shadow
);
