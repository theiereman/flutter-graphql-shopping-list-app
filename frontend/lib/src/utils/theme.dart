import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

const _backgroundColor = Color(0xfffffbef);
const _textBlack = Color(0xff363537);
const _textWhite = Colors.white;
const _primaryColor = Color(0xff2e4057);
const _secondaryColor = Color(0xff95adc9);
const _accentColor = Color(0xffff8811);
// final _okColor = Color(0xff28965A);
const _errorColor = Color(0xffe71d36);

final _theme = ThemeData(
  colorScheme: const ColorScheme(
      surface: _backgroundColor,
      brightness: Brightness.light,
      primary: _primaryColor,
      secondary: _secondaryColor,
      tertiary: _accentColor,
      error: _errorColor,
      onPrimary: _textWhite,
      onSecondary: _textWhite,
      onError: _textWhite,
      onSurface: _textBlack),
  textTheme: GoogleFonts.montserratTextTheme(),
);

@riverpod
ThemeData theme(ThemeRef ref) {
  return _theme;
}

class CustomTheme {
  static const BorderRadius defaultRadius =
      BorderRadius.all(Radius.circular(5));
  static const EdgeInsets defaultPadding = EdgeInsets.all(5);
  static const EdgeInsets defaultMargin = EdgeInsets.all(10);
}
