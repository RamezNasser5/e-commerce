import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:e_commerce/core/utils/consts.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.labelText,
    required this.onPressed,
    required this.isLoading,
  });

  final String labelText;
  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: authButtonColor,
        minimumSize: WidgetStatePropertyAll(
          Size(
            MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height * 0.07,
          ),
        ),
      ),
      child: isLoading
          ? const CircularProgressIndicator()
          : Text(
              labelText,
              style: AppStyles.metropolisMedium14,
            ),
    );
  }
}
