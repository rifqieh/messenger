import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 16.0;
double defaultRadius = 20.0;

Color kBlackColor = Color(0xff000000);
Color kWhiteColor = Color(0xffFFFFFF);
Color kLineColor = Color(0xff191919);
Color kGreyColor = Color(0xffFFFFFF).withOpacity(0.5);
Color kIconColor = Color(0xff8E8E93);
Color kBottomNavBarColor = Color(0xff111111).withOpacity(0.6);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
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
