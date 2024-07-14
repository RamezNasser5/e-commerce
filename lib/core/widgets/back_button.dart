import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({
    super.key,
    required this.icon,
    required this.route,
  });

  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: () => GoRouter.of(context).go(
        route,
      ),
    );
  }
}
