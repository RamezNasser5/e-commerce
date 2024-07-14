import 'package:e_commerce/features/auth/data/repo/auth_repo.dart';
import 'package:e_commerce/features/auth/logic/blocs/auth_bloc/auth_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthRepoImpl implements AuthRepo {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<void> signin(
      {required Emitter<AuthState> emit, required AuthLoginEvent event}) async {
    emit(AuthLoginLoading());
    try {
      await auth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
    } catch (e) {
      emit(AuthLoginFailure(message: e.toString()));
    }
  }

  @override
  Future<void> signup(
      {required Emitter<AuthState> emit,
      required AuthSignupEvent event}) async {
    emit(AuthSignupLoading());
    try {
      await auth.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
    } catch (e) {
      emit(AuthSignupFailure(message: e.toString()));
    }
  }
}
