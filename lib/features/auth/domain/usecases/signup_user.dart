

import 'package:cryptoproject/features/auth/data/models/signup_request.dart';
import 'package:cryptoproject/features/auth/domain/repositories/signup_repository.dart';

class SignupUser {
  final SignupRepository signupRepository;
  SignupUser(this.signupRepository);

  Future<void> call(String username, String firstname, String lastName, String email, String password)async {
     final request = SignupRequest(username: username, firstName: firstname, lastName: lastName, email: email, password: password);
     print("request:  ${request.toJson()}");
     return await signupRepository.signup(username, firstname, lastName, email, password);
  }
}