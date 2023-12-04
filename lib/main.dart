import 'package:flutter/material.dart';
import 'package:qutell_training/core/utils/routes.dart';

import 'views/login_view.dart';

void main() {
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
      },
      initialRoute: AppRoutes.login,
    );
  }
}
