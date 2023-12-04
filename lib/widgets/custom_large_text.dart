import 'package:flutter/material.dart';

import '../core/utils/styles.dart';

class CustomLargeText extends StatelessWidget {
  const CustomLargeText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.largeText,
    );
  }
}
