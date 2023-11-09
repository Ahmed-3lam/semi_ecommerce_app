import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'k_colors.dart';

class KStyles {
  static const TextStyle button = TextStyle(
    color: Colors.white,
    fontSize: 17.0,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textGreyH1 = TextStyle(
    color: KColors.textGrey,
    fontSize: 15,
  );
  static TextStyle textGrey = TextStyle(
    color: KColors.textGrey,
    fontSize: 12,
  );
  static TextStyle textGreySmall = TextStyle(
    color: KColors.textGrey,
    fontSize: 10,
  );
  static TextStyle textPrimaryColor = TextStyle(
    color: KColors.colorPrimary,
  );

  static const TextStyle textNormalWhite = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
  static const TextStyle textH30 = TextStyle(
    color: Color(0xFF333333),
    fontSize: 30,
  );
  static const TextStyle textH1 = TextStyle(
    color: Color(0xFF333333),
    fontSize: 17,
  );
  static const TextStyle textH0 = TextStyle(
    color: Color(0xFF333333),
    fontWeight: FontWeight.bold,
    fontSize: 17,
  );
  static const TextStyle textH2 = TextStyle(
    color: Color(0xFF333333),
    fontSize: 14,
  );
  static const TextStyle textH3 = TextStyle(
    color: Color(0xFF333333),
    fontSize: 13,
  );

  static const TextStyle textRed = TextStyle(
    color: Colors.redAccent,
    fontSize: 14,
  );
  static const TextStyle textRedLineThrough = TextStyle(
    color: Colors.redAccent,
    fontSize: 14,
    decoration: TextDecoration.lineThrough,
  );

  static const TextStyle textWhite = TextStyle(
    color: Colors.white,
    fontSize: 15,
  );
  static TextStyle textSeeMore = TextStyle(
    color: KColors.colorPrimary,
    fontSize: 13,
  );
}
