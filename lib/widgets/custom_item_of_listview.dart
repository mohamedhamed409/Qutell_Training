import 'package:flutter/material.dart';
import 'package:qutell_training/core/utils/styles.dart';
import 'package:qutell_training/widgets/custom_search.dart';

class CustomItemForListview2 extends StatelessWidget {
  const CustomItemForListview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, bottom: 35),
      child: Column(children: [
        const CustomSearch(),
        const SizedBox(
          height: 20,
        ),
        CustomItemForListview(),
      ]),
    );
  }
}

class CustomItemForListview extends StatelessWidget {
  const CustomItemForListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage('')),
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'title',
                style: TextStyles.largeText,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 180),
                height: 70,
                child: const Text(
                  'descriptiiptiojjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjndescription',
                  style: TextStyles.smallText,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
