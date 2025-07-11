

import 'package:cryptoproject/features/auth/data/models/login_request.dart';
import 'package:cryptoproject/features/auth/domain/entities/login_response_entity.dart';
import 'package:cryptoproject/features/auth/domain/repositories/login_repository.dart';

class LoginUser {
  final LoginRepository loginRepository;
  LoginUser(this.loginRepository);

  Future<LoginResponseEntity> call(String email, String password) async {
    final request = LoginRequest(email: email, password: password);
    print("Request body: ${request.toJson()}");
    return await loginRepository.login(email, password);
  }

}