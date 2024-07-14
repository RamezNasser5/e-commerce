import 'package:e_commerce/features/auth/data/repo/auth_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepoImpl authRepoImpl = AuthRepoImpl();
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      if (event is AuthLoginEvent) {
        authRepoImpl.signin(emit: emit, event: event);
      } else if (event is AuthSignupEvent) {
        authRepoImpl.signup(emit: emit, event: event);
      }
    });
  }
}
