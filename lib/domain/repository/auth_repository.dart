import '../../data/model/base_response.dart';

abstract class AuthRepository {
  Future<BaseResponse> login(
    String email,
    String password,
  );

  Future<BaseResponse> register(
    String name,
    String email,
    String password,
  );

  Future<void> logout();

  Future<BaseResponse> forgotPassword(
    String email,
  );
}
