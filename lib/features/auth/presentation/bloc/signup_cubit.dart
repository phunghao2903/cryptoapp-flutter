import 'package:cryptoproject/features/auth/data/datasources/signup_api.dart';
import 'package:cryptoproject/features/auth/data/repository/signup_repository_impl.dart';
import 'package:cryptoproject/features/auth/domain/usecases/signup_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
abstract class SignupState {}

class SignupSuccess extends SignupState{}
class SignupInitial extends SignupState{}
class SignupFailura extends SignupState{
  final String signupError;

  SignupFailura({required this.signupError});
}


class SignupCubit extends Cubit<SignupState>{

  late final SignupUser signupUser ;
  SignupCubit():super(SignupInitial()){
    final dio = Dio();
    final signupApi = SignupApi(dio);
    final repository = SignupRepositoryImpl(signupApi);
    signupUser = SignupUser(repository);


  }

  Future<void> signup(String username, String firstname, String lastName, String email, String password)async{
      if(firstname.isEmpty || username.isEmpty || lastName.isEmpty ){
        emit(SignupFailura(signupError: "Khong duoc de trong"));
      } else if (!email.contains("@gmail.com") && password.length <6){
        emit(SignupFailura(signupError: "Email phai bao gom @gmail.com va mat khau phai tu 6 ky tu"));
      }else{
        try{
          await signupUser(username,firstname,lastName,email,password);
        
          emit(SignupSuccess());



        }catch(e){
          print(e);
          emit(SignupFailura(signupError: "Tai khoan da ton tai"));

        }
        

        
      }
  }


}


