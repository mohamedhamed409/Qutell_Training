import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qutell_training/widgets/custom_item_of_listview.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CustomItemForListview(),
                )));
  }
}
