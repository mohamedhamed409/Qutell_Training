import 'package:flutter/material.dart';

abstract class TextStyles {
  static const largeText = TextStyle(
    fontFamily: 'Jost',
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: Color(0xff202244),
  );
  static const largeWhiteText = TextStyle(
    fontFamily: 'Jost',
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const smallText = TextStyle(
    fontFamily: 'Mulish',
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: Color(0xff545454),
    overflow: TextOverflow.ellipsis,
  );

  static const textInButton = TextStyle(
    fontFamily: 'Mulish',
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const smallWhiteText = TextStyle(
      fontFamily: 'Mulish',
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colors.white);
}
