import 'package:flutter/material.dart';
import 'package:qutell_training/core/utils/color_style.dart';
import 'package:qutell_training/core/utils/styles.dart';

class OfferContainer extends StatelessWidget {
  const OfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: ColorStyles.offerContainerColor,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('25% OFF', style: TextStyles.textInButton),
          const Text(
            'Today\'s Special',
            style: TextStyles.largeWhiteText,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 120),
            child: const Text(
              'Get a Discount for Every Courses Order only Valid for Today',
              style: TextStyles.smallWhiteText,
            ),
          ),
        ],
      ),
    );
  }
}
