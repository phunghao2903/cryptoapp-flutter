


import 'package:cryptoproject/features/auth/data/datasources/signup_api.dart';
import 'package:cryptoproject/features/auth/data/models/signup_request.dart';
import 'package:cryptoproject/features/auth/domain/repositories/signup_repository.dart';

class SignupRepositoryImpl implements SignupRepository{
  final SignupApi signupApi;

  SignupRepositoryImpl(this.signupApi);

   Future <void> signup (String username, String firstname, String lastName, String email, String password)async{
      final request = SignupRequest(username: username, firstName: firstname, lastName: lastName, email: email, password: password);
      await signupApi.signup(request.toJson());
   }
}