import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AuthSocialAccountHelper extends StatelessWidget {
  const AuthSocialAccountHelper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.sizeOf(context).width * 0.2,
        top: MediaQuery.sizeOf(context).height * 0.2,
      ),
      child: Text(
        'or login with social account',
        style: AppStyles.metropolisMedium14.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
