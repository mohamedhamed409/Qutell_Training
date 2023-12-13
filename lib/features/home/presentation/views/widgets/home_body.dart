import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutell_training/features/home/presentation/view_model/home_cubit.dart';
import 'package:qutell_training/features/home/presentation/view_model/home_states.dart';
import 'package:qutell_training/widgets/category_item.dart';
import 'package:qutell_training/widgets/custom_category.dart';
import 'package:qutell_training/widgets/custom_search.dart';
import 'package:qutell_training/widgets/offer_container.dart';
import '../../../../../widgets/custom_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
    
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 35, right: 35, bottom: 35),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: CustomAppBar()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const SliverToBoxAdapter(child: CustomSearch()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const SliverToBoxAdapter(child: OfferContainer()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const SliverToBoxAdapter(child: CustomCategory()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CategoryItem(
                    category: HomeCubit.get(context).categoryModelList[index],
                  ),
                  itemCount: HomeCubit.get(context).categoryModelList.length,
                ),
              )),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              // SliverList(
              //     delegate: SliverChildBuilderDelegate(
              //   (context, index) => Text('text,$index'),
              //   childCount: 10,
              // )),
            ],
          ),
        );
      },
    );
  }
}
