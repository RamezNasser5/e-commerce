import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LoginViewComponents extends StatelessWidget {
  const LoginViewComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width * 0.05,
        ),
        child: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Login',
              style: AppStyles.metropolisBold34,
            ),
          ],
        ),
      ),
    );
  }
}
