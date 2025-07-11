import 'package:cryptoproject/features/auth/presentation/bloc/login_cubit.dart';
import 'package:cryptoproject/features/auth/presentation/bloc/signup_cubit.dart';
import 'package:cryptoproject/features/home/presentation/bloc/home_cubit.dart';
import 'package:cryptoproject/features/home/presentation/pages/home_page.dart';
import 'package:cryptoproject/features/auth/presentation/pages/signup_page.dart';
import 'package:cryptoproject/features/navigation/nav_bottom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff16171D),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffFFFFFF)),
        backgroundColor: Color(0xff16171D),
        title: Stack(
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.only(right: myWidth * 0.1),
              child: Text(
                "Log in",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFFFFF)),
              ),
            )),
          ],
        ),
      ),
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlocProvider(
                          create: (context) => HomeCubit(),
                          child: NavBottomAppbar(),
                        )));
          } else if (state is LoginFailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        builder: (context, state) {
          bool scurePassword = true;
          String? emailError;
          String? passwordError;

          if (state is LoginEmail) {
            emailError = state.emailError;
          } else if (state is LoginPassword) {
            passwordError = state.passwordError;
          }

          return Container(
            height: myHeight,
            width: myWidth,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: myWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: myHeight * 0.03,
                  ),
                  Text(
                    "Email Address",
                    style: TextStyle(
                        color: Color(0xffA7AEBF),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    // height: myHeight * 0.05,
                    width: myWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xff21242D),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(left: myWidth * 0.02),
                      child: Row(children: [
                        Expanded(
                            child: TextField(
                          controller: emailController,
                          style: TextStyle(color: Colors.white),
                          onChanged: (text) {
                            context.read<LoginCubit>().loginEmail(text);
                          },
                          decoration: InputDecoration(
                              errorText: emailError,
                              errorStyle: TextStyle(fontSize: 14),
                              hintText: "Enter your email address",
                              hintStyle: TextStyle(
                                // color: Color.fromARGB(255, 140, 143, 153),
                                color: Color(0xff494D58),
                              ),
                              border: InputBorder.none),
                        )),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: myHeight * 0.03,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Color(0xffA7AEBF),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    // height: myHeight * 0.05,
                    width: myWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xff21242D),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(left: myWidth * 0.02),
                      child: BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, state) {
                          if (state is ObscureText) {
                            scurePassword = state.obscurePassword;
                          }
                          return Row(
                            children: [
                              Expanded(
                                  child: TextField(
                                controller: passwordController,
                                obscureText: scurePassword,
                                style: TextStyle(color: Colors.white),
                                onChanged: (text) {
                                  context
                                      .read<LoginCubit>()
                                      .loginPassword(text);
                                },
                                decoration: InputDecoration(
                                  errorText: passwordError,
                                  errorStyle: TextStyle(fontSize: 14),
                                  hintText: "Enter your password",
                                  hintStyle: TextStyle(
                                    // color: Color.fromARGB(255, 140, 143, 153),
                                    color: Color(0xff494D58),
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<LoginCubit>()
                                            .obscureText(scurePassword);
                                      },
                                      child: scurePassword
                                          ? Icon(Icons.visibility_off)
                                          : Icon(Icons.visibility)),
                                ),
                              )),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: myHeight * 0.01),
                  Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: Color(0xffF5C249),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: myHeight * 0.1),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<LoginCubit>()
                          .login(emailController.text, passwordController.text);
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> NavBottomAppbar()));
                    },
                    child: Container(
                        height: myHeight * 0.05,
                        width: myWidth * 0.9,
                        decoration: BoxDecoration(
                            color: Color(0xffF5C249),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Log in",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ))),
                  ),
                  SizedBox(height: myHeight * 0.42),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New to Foxcrypto?",
                        style:
                            TextStyle(color: Color(0xff494D58), fontSize: 16),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => BlocProvider(
                                          create: (context) => SignupCubit(),
                                          child: SignupPage(),
                                        )));
                          },
                          child: Text(
                            " Create an account",
                            style: TextStyle(
                                color: Color(0xffF5C249), fontSize: 16),
                          ))
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
