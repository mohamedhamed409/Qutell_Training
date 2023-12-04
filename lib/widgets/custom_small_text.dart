import 'package:flutter/material.dart';

import '../core/utils/styles.dart';

class CustomSmallText extends StatelessWidget {
  const CustomSmallText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.smallText,
    );
  }
}
