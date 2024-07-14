import 'package:e_commerce/features/auth/logic/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthRepo {
  Future<void> signup({
    required Emitter<AuthState> emit,
    required AuthSignupEvent event,
  });

  Future<void> signin({
    required Emitter<AuthState> emit,
    required AuthLoginEvent event,
  });
}
