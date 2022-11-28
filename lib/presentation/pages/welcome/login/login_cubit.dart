import 'package:bloc/bloc.dart';
import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/data/model/base_response.dart';
import 'package:booking_aja/domain/controller/auth_controller.dart';
import 'package:booking_aja/utils/helper/helper.dart';
import 'package:logging/logging.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> implements HttpState{
  LoginCubit() : super(LoginState().init());

  late final AuthController _authController = AuthController(this);

  void login() async {
    BaseResponse baseResponse = await _authController.login(
      state.emailController.text,
      state.passwordController.text,
    );
    PrefHelper.instance.saveToken(baseResponse.result?.login?.token ?? "");

    Logger.root.info("Token ${PrefHelper.instance.token}");
  }

  @override
  void onEndRequest(String url, String method) {
    Logger.root.info("onEndRequest $url => $method");
  }

  @override
  void onErrorRequest(String url, String method) {
    Logger.root.info("onErrorRequest $url => $method");
  }

  @override
  void onStartRequest(String url, String method) {
    Logger.root.info("onStartRequest $url => $method");
  }

  @override
  void onSuccessRequest(String url, String method) {
    Logger.root.info("onSuccessRequest $url => $method");
  }
}
