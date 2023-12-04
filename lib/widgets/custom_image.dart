import 'package:flutter/material.dart';

import '../core/utils/app_images.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 129, left: 87),
      child: Image.asset(
        width: 185,
        height: 70,
      AppImages.logo,
      ),
    );
  }
}
