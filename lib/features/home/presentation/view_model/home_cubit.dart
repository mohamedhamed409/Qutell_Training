import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutell_training/features/home/data/models/category_model/category_model.dart';
import 'package:qutell_training/features/home/data/models/category_model/datum.dart';
import 'package:qutell_training/features/home/presentation/view_model/home_states.dart';
import 'package:qutell_training/shared/network/remote/api.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeIntialState());
  static HomeCubit get(context) => BlocProvider.of(context);
  CategoryModel? categoryModel;

  List<Datum> categoryModelList = [];

  Future<void> getCategory({required String url}) async {
    emit(HomeLoadingState());

    try {
      final response = await DioHelper.getData(endPoint: url);

      if (response.statusCode == 200) {
        categoryModel = CategoryModel.fromJson(response.data);

        categoryModelList = categoryModel!.data!;

        for (int i = 0; i < categoryModelList.length; i++) {}

        emit(HomeSuccessState());
      }
    } catch (e) {
      emit(HomeErrorState('An error occurred: $e'));
    }
  }

  Future<void> getLogout({required String url}) async {
    await DioHelper.getData(endPoint: url).then((value) {
      emit(HomeLogoutSuccessState());
    }).catchError((error) {
      emit(HomeLogoutErrorState(error));
    });
  }
}
