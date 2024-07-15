import 'package:e_commerce/core/router/app_router.dart';
import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:e_commerce/features/auth/ui/widgets/auth_social_account_helper.dart';
import 'package:e_commerce/features/auth/ui/widgets/custom_auth_button.dart';
import 'package:e_commerce/features/auth/ui/widgets/custom_auth_text_field.dart';
import 'package:e_commerce/features/auth/ui/widgets/login_or_sign_navigation.dart';
import 'package:e_commerce/features/auth/ui/widgets/social_account_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpViewComponents extends StatelessWidget {
  const SignUpViewComponents({super.key});

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
            const CustomAuthTextField(
              labelText: 'Name',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomAuthTextField(
              labelText: 'Email',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomAuthTextField(
              labelText: 'Password',
            ),
            LoginOrSignUpNavigation(
              onTap: () => GoRouter.of(context).go(AppRouter.loginRoute),
              message: 'Do have an account?',
            ),
            const CustomAuthButton(
              labelText: 'Sign Up',
            ),
            const AuthSocialAccountHelper(),
            const SocialAccountIcons(),
          ],
        ),
      ),
    );
  }
}
