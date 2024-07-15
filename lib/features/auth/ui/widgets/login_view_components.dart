import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:e_commerce/features/auth/ui/widgets/auth_social_account_helper.dart';
import 'package:e_commerce/features/auth/ui/widgets/custom_auth_button.dart';
import 'package:e_commerce/features/auth/ui/widgets/custom_auth_text_field.dart';
import 'package:e_commerce/features/auth/ui/widgets/social_account_icons.dart';
import 'package:flutter/material.dart';

class LoginViewComponents extends StatelessWidget {
  const LoginViewComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Login',
              style: AppStyles.metropolisBold34,
            ),
            SizedBox(
              height: 64,
            ),
            CustomAuthTextField(
              labelText: 'Email',
            ),
            SizedBox(
              height: 20,
            ),
            CustomAuthTextField(
              labelText: 'Password',
            ),
            SizedBox(
              height: 64,
            ),
            CustomAuthButton(
              labelText: 'Login',
            ),
            AuthSocialAccountHelper(),
            SocialAccountIcons(),
          ],
        ),
      ),
    );
  }
}
