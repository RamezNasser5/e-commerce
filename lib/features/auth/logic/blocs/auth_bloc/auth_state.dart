part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoginLoading extends AuthState {}

final class AuthLoginSuccess extends AuthState {}

final class AuthLoginFailure extends AuthState {
  final String message;

  AuthLoginFailure({required this.message});
}

final class AuthSignupLoading extends AuthState {}

final class AuthSignupSuccess extends AuthState {}

final class AuthSignupFailure extends AuthState {
  final String message;

  AuthSignupFailure({required this.message});
}
