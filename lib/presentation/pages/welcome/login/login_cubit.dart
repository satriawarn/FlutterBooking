import 'package:bloc/bloc.dart';
import 'package:booking_aja/domain/controller/auth_controller.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState().init());

  final AuthController _authController = AuthController();

  void login() async {
    _authController.login(
      state.emailController.text,
      state.passwordController.text,
    );
  }
}
