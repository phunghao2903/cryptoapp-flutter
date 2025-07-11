import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'signup_api.g.dart';

@RestApi(baseUrl: 'https://us-central1-skin-scanner-3c419.cloudfunctions.net/api/auth-service')
abstract class SignupApi {
   factory SignupApi(Dio dio,{String baseUrl}) = _SignupApi;

   @POST("/register")
   Future<void> signup(@Body() Map<String,dynamic> request);

}