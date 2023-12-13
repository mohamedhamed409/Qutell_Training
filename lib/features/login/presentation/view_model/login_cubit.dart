import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutell_training/constants.dart';
import 'package:qutell_training/features/login/presentation/view_model/login_states.dart';
import 'package:qutell_training/shared/network/remote/api.dart';
import 'package:qutell_training/shared/network/remote/endpoints.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialStates());
  static LoginCubit get(context) => BlocProvider.of(context);
  late bool status;
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isVisible = false;
  bool isVisiable = false, obscureText = true;

  void changePasswordVisibility() {
    isVisiable = !isVisiable;
    obscureText = !obscureText;
    emit(LoginChangePasswordVisibility());
  }

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingStates());
    DioHelper.postData(
      endPoint: login,
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      if (value.data) {
        token = value.data['data']['access_token'];
        emit(LoginSucessStates());
      } else {
        emit(LoginLoadingStates());
      }
    }).catchError((error) {
      emit(LoginErrorStates(error));
    });
  }
}


