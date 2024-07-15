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

class SignUpViewComponents extends StatefulWidget {
  const SignUpViewComponents({super.key});

  @override
  State<SignUpViewComponents> createState() => _SignUpViewComponentsState();
}

class _SignUpViewComponentsState extends State<SignUpViewComponents> {
  String name = '';

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
              'Sign Up',
              style: AppStyles.metropolisBold34,
            ),
            const SizedBox(
              height: 64,
            ),
            CustomAuthTextField(
              labelText: 'Name',
              onChanged: (value) => name = value,
            ),
            const SizedBox(
              height: 20,
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
              onTap: () => GoRouter.of(context).go(AppRouter.loginRoute),
              message: 'Do have an account?',
            ),
            CustomAuthButton(
              labelText: 'Sign Up',
              onPressed: () => BlocProvider.of<AuthBloc>(context).add(
                AuthSignupEvent(email: email, password: password),
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
