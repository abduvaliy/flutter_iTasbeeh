// ignore_for_file: file_names

import 'package:flutter/widgets.dart';

class IconTasbeeh {
  IconTasbeeh._();

  static const _kFontFam = 'IconTasbeeh';
  static const _kFontFam2 = 'IconTasbeeh2';

  //Floating and App Bar Icons
  //It`s another icon family "IconTasbeeh2"
  static const IconData menuicon = IconData(
    0xe800,
    fontFamily: _kFontFam2,
  );
  static const IconData floating_1 = IconData(
    0xe801,
    fontFamily: _kFontFam2,
  );
  static const IconData floating_2 = IconData(
    0xe802,
    fontFamily: _kFontFam2,
  );
  static const IconData floating_3 = IconData(
    0xe803,
    fontFamily: _kFontFam2,
  );

  //It's BottomBar icons, and also have Icon's in another file "IconQuran.dart"
  static const IconData quran = IconData(
    0xe800,
    fontFamily: _kFontFam,
  );
  static const IconData mosque = IconData(
    0xe801,
    fontFamily: _kFontFam,
  );
  static const IconData tasbeeh = IconData(
    0xe802,
    fontFamily: _kFontFam,
  );
  static const IconData compass = IconData(
    0xe803,
    fontFamily: _kFontFam,
  );
  static const IconData more = IconData(
    0xe804,
    fontFamily: _kFontFam,
  );
}
