import 'package:e_commerce/core/router/app_router.dart';
import 'package:e_commerce/core/utils/consts.dart';
import 'package:e_commerce/core/widgets/back_button.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authPrimaryColor,
      appBar: AppBar(
        backgroundColor: authPrimaryColor,
        leading: const GoBackButton(
          icon: Icons.arrow_back_ios,
          route: AppRouter.initialRoute,
        ),
      ),
    );
  }
}
