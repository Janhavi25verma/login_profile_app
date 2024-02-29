import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData textTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
  );
}
