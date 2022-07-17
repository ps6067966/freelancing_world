import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeService {
  static CupertinoThemeData lightTheme = CupertinoThemeData(
      textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
              color: CupertinoColors.black,
              fontFamily: GoogleFonts.robotoFlex().fontFamily)));
  static CupertinoThemeData darkTheme = CupertinoThemeData(
      textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
              color: CupertinoColors.white,
              fontFamily: GoogleFonts.robotoFlex().fontFamily)));
}
