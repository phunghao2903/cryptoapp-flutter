


import 'package:cryptoproject/features/auth/domain/entities/login_response_entity.dart';

abstract class LoginRepository {
  Future <LoginResponseEntity> login(String email, String password);

}
