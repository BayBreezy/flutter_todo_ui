import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double kPadding = 26.0;

// Dark theme colors
Color kDarkScaffoldBackground = const Color(0xff2C122A);
Color kDarkPrimaryColor = const Color(0xff7F0834);
Color kDarkBottomNavColor = const Color(0xff4C1F48);
Color kDarkIconColor = Colors.white;
Color kDarkChipColor = Colors.red;

// Light theme colors
Color kLightScaffoldBackground = const Color(0xffffffff);
Color kLightPrimaryColor = const Color(0xff581b98);
Color kLightBottomNavColor = const Color(0xffF4ECFF);
Color kLightIconColor = Colors.black54;
Color kLightChipColor = Colors.purpleAccent;

/// Dark theme config
var darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kDarkScaffoldBackground,
  colorScheme: const ColorScheme.dark().copyWith(
    secondary: kDarkChipColor,
  ),
  iconTheme: IconThemeData(
    color: kDarkIconColor,
    size: 20,
  ),
  primaryColor: kDarkPrimaryColor,
  primarySwatch: Colors.red,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData(brightness: Brightness.dark)
          .textTheme // This is necessary for dark theme
      ),
);

/// Light theme
var lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: kLightScaffoldBackground,
  colorScheme: const ColorScheme.light().copyWith(
    secondary: kLightChipColor,
  ),
  iconTheme: IconThemeData(
    color: kLightIconColor,
  ),
  primaryColor: kLightPrimaryColor,
  primarySwatch: Colors.deepPurple,
  textTheme: GoogleFonts.poppinsTextTheme(),
);
