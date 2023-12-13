import 'package:flutter/material.dart';
import 'package:qutell_training/widgets/category_item.dart';

class PopularCoursesView extends StatelessWidget {
  const PopularCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Popular Courses'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      // body:ListView.builder(itemCount: 20,
      //   itemBuilder:(context,index)=>CategoryItem(category: null,),),
    );
  }
}
