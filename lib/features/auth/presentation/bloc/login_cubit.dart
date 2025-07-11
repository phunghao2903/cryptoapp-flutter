import 'package:cryptoproject/features/auth/data/datasources/login_api.dart';
import 'package:cryptoproject/features/auth/data/models/storage.dart';
import 'package:cryptoproject/features/auth/data/repository/login_repository_impl.dart';
import 'package:cryptoproject/features/auth/domain/repositories/login_repository.dart';
import 'package:cryptoproject/features/auth/domain/usecases/login_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  final String error;
  LoginFailure(this.error);
}

class ObscureText extends LoginState {
  final bool obscurePassword;

  ObscureText(this.obscurePassword);
}

class LoginEmail extends LoginState {
  final String? emailError;
  LoginEmail({required this.emailError});
}

class LoginPassword extends LoginState {
  final String? passwordError;
  LoginPassword({this.passwordError});
}

class LoginCubit extends Cubit<LoginState> {
  late final LoginUser loginUser;
  LoginCubit() : super(LoginInitial()) {
    final Dio dio = Dio();
    final loginApi = LoginApi(dio);
    final repository = LoginRepositoryImpl(loginApi);
    loginUser = LoginUser(repository);
  }

  bool obscurePassword = false;

  void loginEmail(String email) {
    if (email.contains("@gmail.com") && email.length > 10 || email.isEmpty) {
      emit(LoginEmail(emailError: null));
    } else {
      emit(LoginEmail(emailError: "Email phai bao gom @gmail.com"));
    }
  }

  void loginPassword(String password) {
    if (password.length >= 6 || password.isEmpty) {
      emit(LoginPassword(passwordError: null));
    } else {
      emit(LoginPassword(passwordError: "Mat khau phai tren 6 ky tu"));
    }
  }

  Future<void> login(String email, String password) async {
    // emit(LoginLoading());
    // await Future.delayed(Duration(seconds: 2));
    print("Đang gửi login với: $email - $password"); // thêm dòng này

    if (email.contains("@gmail.com") && password.length >= 6) {
      try {
        final response = await loginUser(email, password);
        final token = response.accessToken;
        await Storage.saveToken(token);

        emit(LoginSuccess());
      } catch (e, stacktrace) {
        print("Login Error: $e");
        print("Stacktrace: $stacktrace");
        emit(LoginFailure('Sai tai khoan hoac mat khau API'));
      }
    } else {
      emit(LoginFailure("tai khoan va mat khau khong dung"));
    }
  }

  void obscureText(bool text) {
    obscurePassword = !text;
    emit(ObscureText(obscurePassword));
  }
}
