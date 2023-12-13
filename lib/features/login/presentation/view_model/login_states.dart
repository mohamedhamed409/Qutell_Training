abstract class LoginStates {}

class LoginInitialStates extends LoginStates {}

class LoginLoadingStates extends LoginStates {}

class LoginSucessStates extends LoginStates {}

class LoginErrorStates extends LoginStates {
  final String error;

  LoginErrorStates(this.error);
}

class LoginChangePasswordVisibility extends LoginStates {}
