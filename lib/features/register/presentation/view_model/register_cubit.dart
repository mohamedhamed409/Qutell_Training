import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutell_training/features/register/presentation/view_model/register_states.dart';
import 'package:qutell_training/shared/network/remote/api.dart';
import 'package:qutell_training/shared/network/remote/endpoints.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);
  late bool status;
  void userRegister({
    required String email,
    required String password,
    required String name,
    required String confirmPassword,
  }) {
    emit(RegisterLoadingState());
    DioHelper.postData(
      endPoint: register,
      data: {
        'name': name,
        'password_confirmation': confirmPassword,
        'email': email,
        'password': password,
      },
    ).then((value) {
      if (status) {
        emit(RegisterSuccessState());
      }
    }).catchError((error) {
      emit(RegisterErrorState(error));
    });
  }
}
