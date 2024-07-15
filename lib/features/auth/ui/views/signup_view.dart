import 'package:e_commerce/core/router/app_router.dart';
import 'package:e_commerce/core/utils/consts.dart';
import 'package:e_commerce/core/widgets/back_button.dart';
import 'package:e_commerce/features/auth/ui/widgets/signup_view_components.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpViewBody();
  }
}

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authPrimaryColor,
      appBar: AppBar(
        backgroundColor: authPrimaryColor,
        leading: const GoBackButton(
          icon: Icons.arrow_back_ios,
          route: AppRouter.loginRoute,
        ),
      ),
      body: const SignUpViewComponents(),
    );
  }
}
