import 'package:cryptoproject/features/auth/data/models/login_request.dart';
import 'package:cryptoproject/features/auth/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'login_api.g.dart';

@RestApi(baseUrl:'https://us-central1-skin-scanner-3c419.cloudfunctions.net/api/auth-service')
abstract class LoginApi {
   factory LoginApi(Dio dio,{String baseUrl}) = _LoginApi;
   @POST("/login")
   Future<LoginResponse> login (@Body() Map<String,dynamic> request );
}