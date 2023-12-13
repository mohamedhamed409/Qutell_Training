abstract class HomeStates {}

class HomeIntialState extends HomeStates {}

class HomeLoadingState extends HomeStates {}

class HomeSuccessState extends HomeStates {}

class HomeErrorState extends HomeStates {
  final String error;

  HomeErrorState(this.error);
}

class HomeLogoutSuccessState extends HomeStates {}

class HomeLogoutErrorState extends HomeStates {
  final String error;

  HomeLogoutErrorState(this.error);
}
