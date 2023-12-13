import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutell_training/bloc_observer.dart';
import 'package:qutell_training/core/utils/routes.dart';
import 'package:qutell_training/features/login/presentation/views/login_view.dart';
import 'package:qutell_training/features/register/presentation/views/register_view.dart';
import 'package:qutell_training/shared/network/remote/api.dart';
import 'package:qutell_training/features/home/presentation/views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  DioHelper.init();

  runApp(const QutellTraining());
}

class QutellTraining extends StatelessWidget {
  const QutellTraining({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.login: (context) => const LoginView(),
        AppRoutes.home: (context) => const HomeView(),
        AppRoutes.register: (context) => const RegisterView(),
      },
      initialRoute: AppRoutes.login,
      //  home: CategoryView(),
    );
  }
}
