import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LoginOrSignUpNavigation extends StatelessWidget {
  const LoginOrSignUpNavigation({
    super.key,
    this.onTap,
    required this.message,
  });

  final void Function()? onTap;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.sizeOf(context).width * 0.5,
        top: MediaQuery.sizeOf(context).height * 0.02,
        bottom: MediaQuery.sizeOf(context).height * 0.02,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          message,
          style: AppStyles.metropolisMedium14.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
