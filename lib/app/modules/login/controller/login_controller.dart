import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:job_timer/app/services/auth/auth_service.dart';
part 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  final AuthService _authService; //passando o authservice por parametro

  LoginController({required AuthService authService})
      : _authService = authService,
        super(const LoginState.initial());

  Future<void> signIn() async {
    //função signIn esta mudando o status para loading
    try {
      emit(state.copyWith(status: LoginStatus.loading));
      await _authService.signIn();
    } catch (e) {
      emit(
        state.copyWith(
            status: LoginStatus.failure, errorMessage: 'failed to login'),
      );
    }
  }
}
