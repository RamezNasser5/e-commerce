import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:e_commerce/core/utils/consts.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: authButtonColor,
        minimumSize: WidgetStatePropertyAll(
          Size(
            MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height * 0.07,
          ),
        ),
      ),
      child: Text(
        labelText,
        style: AppStyles.metropolisMedium14,
      ),
    );
  }
}
