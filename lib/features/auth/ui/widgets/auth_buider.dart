import 'package:e_commerce/core/router/app_router.dart';
import 'package:e_commerce/features/auth/logic/blocs/auth_bloc/auth_bloc.dart';
import 'package:e_commerce/features/auth/ui/widgets/custom_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthBuilder extends StatefulWidget {
  const AuthBuilder({
    super.key,
    required this.email,
    required this.password,
    required this.labelText,
  });

  final String email;
  final String password;
  final String labelText;

  @override
  State<AuthBuilder> createState() => _AuthBuilderState();
}

class _AuthBuilderState extends State<AuthBuilder> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return widget.labelText == 'Login'
        ? BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthLoginLoading) {
                setState(() {
                  isLoading = true;
                });
              } else if (state is AuthLoginSuccess) {
                setState(() {
                  isLoading = false;
                });
                context.go(AppRouter.homeRoute);
              } else if (state is AuthLoginFailure) {
                setState(() {
                  isLoading = false;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                  ),
                );
              }
            },
            builder: (context, state) {
              return CustomAuthButton(
                isLoading: isLoading,
                labelText: widget.labelText,
                onPressed: () => BlocProvider.of<AuthBloc>(context).add(
                  AuthLoginEvent(
                      email: widget.email, password: widget.password),
                ),
              );
            },
          )
        : BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthSignupLoading) {
                setState(() {
                  isLoading = true;
                });
              } else if (state is AuthSignupSuccess) {
                setState(() {
                  isLoading = false;
                });
                context.go(AppRouter.homeRoute);
              } else if (state is AuthSignupFailure) {
                setState(() {
                  isLoading = false;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                  ),
                );
              }
            },
            builder: (context, state) {
              return CustomAuthButton(
                isLoading: isLoading,
                labelText: widget.labelText,
                onPressed: () => BlocProvider.of<AuthBloc>(context).add(
                  AuthSignupEvent(
                      email: widget.email, password: widget.password),
                ),
              );
            },
          );
  }
}
