


import 'package:cryptoproject/features/auth/data/datasources/login_api.dart';
import 'package:cryptoproject/features/auth/data/models/login_request.dart';
import 'package:cryptoproject/features/auth/data/models/login_response.dart';
import 'package:cryptoproject/features/auth/domain/entities/login_response_entity.dart';
import 'package:cryptoproject/features/auth/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
    final LoginApi loginApi;

  LoginRepositoryImpl(this.loginApi);
    
   
    @override
    Future<LoginResponseEntity> login(String email,String password)async{
       final request = LoginRequest(email: email, password: password);
       final response = await loginApi.login(request.toJson());

       return LoginResponseEntity(accessToken: response.accessToken);

    }
  

}