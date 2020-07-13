import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static const String _titleFontFamily = 'Oswald';
  static const String _headingFontFamily = 'PlayfairDisplay';
  static const String _contentFontFamily = 'Spectral';

  static const TextStyle title = TextStyle(
    color: Colors.black,
    fontFamily: _titleFontFamily,
    fontStyle: FontStyle.normal,
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle heading = TextStyle(
    color: Colors.black,
    fontFamily: _headingFontFamily,
    fontStyle: FontStyle.normal,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle subheading = TextStyle(
    color: Colors.black,
    fontFamily: _headingFontFamily,
    fontStyle: FontStyle.normal,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle content = TextStyle(
    color: Colors.black,
    fontFamily: _contentFontFamily,
    fontStyle: FontStyle.normal,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
}
