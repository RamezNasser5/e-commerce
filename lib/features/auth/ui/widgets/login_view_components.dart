import 'package:e_commerce/core/router/app_router.dart';
import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:e_commerce/features/auth/logic/blocs/auth_bloc/auth_bloc.dart';
import 'package:e_commerce/features/auth/ui/widgets/auth_social_account_helper.dart';
import 'package:e_commerce/features/auth/ui/widgets/custom_auth_button.dart';
import 'package:e_commerce/features/auth/ui/widgets/custom_auth_text_field.dart';
import 'package:e_commerce/features/auth/ui/widgets/login_or_sign_navigation.dart';
import 'package:e_commerce/features/auth/ui/widgets/social_account_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginViewComponents extends StatefulWidget {
  const LoginViewComponents({super.key});

  @override
  State<LoginViewComponents> createState() => _LoginViewComponentsState();
}

class _LoginViewComponentsState extends State<LoginViewComponents> {
  String email = '';

  String password = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Login',
              style: AppStyles.metropolisBold34,
            ),
            const SizedBox(
              height: 64,
            ),
            CustomAuthTextField(
              labelText: 'Email',
              onChanged: (value) => email = value,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomAuthTextField(
              labelText: 'Password',
              onChanged: (value) => password = value,
            ),
            LoginOrSignUpNavigation(
              onTap: () => GoRouter.of(context).go(AppRouter.signupRoute),
              message: 'Don\'t have an account?',
            ),
            CustomAuthButton(
              labelText: 'Login',
              onPressed: () => BlocProvider.of<AuthBloc>(context).add(
                AuthLoginEvent(email: email, password: password),
              ),
            ),
            const AuthSocialAccountHelper(),
            const SocialAccountIcons(),
          ],
        ),
      ),
    );
  }
}
