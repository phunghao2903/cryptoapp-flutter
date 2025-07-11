import 'package:cryptoproject/features/auth/presentation/bloc/login_cubit.dart';
import 'package:cryptoproject/features/auth/presentation/bloc/signup_cubit.dart';
import 'package:cryptoproject/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatelessWidget {
  // const SignupPage({super.key});
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
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
                "Sign up",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFFFFF)),
              ),
            ))
          ],
        ),
      ),
      body: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          if (state is SignupFailura) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.signupError)));
          } else if (state is SignupSuccess) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Dang ky thanh cong")));
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlocProvider(
                          create: (context) => LoginCubit(),
                          child: LoginPage(),
                        )));
          }
        },
        builder: (context, state) {
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
                    "First Name",
                    style: TextStyle(
                        color: Color(0xffA7AEBF),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: myHeight * 0.05,
                    width: myWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xff21242D),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(left: myWidth * 0.02),
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                            controller: firstNameController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Enter your first name",
                                hintStyle: TextStyle(
                                  // color: Color.fromARGB(255, 140, 143, 153),
                                  color: Color(0xff494D58),
                                ),
                                border: InputBorder.none),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: myHeight * 0.03,
                  ),
                  Text(
                    "Last Name",
                    style: TextStyle(
                        color: Color(0xffA7AEBF),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: myHeight * 0.05,
                    width: myWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xff21242D),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(left: myWidth * 0.02),
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                            controller: lastNameController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Enter your last name",
                                hintStyle: TextStyle(
                                  // color: Color.fromARGB(255, 140, 143, 153),
                                  color: Color(0xff494D58),
                                ),
                                border: InputBorder.none),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: myHeight * 0.03,
                  ),
                  Text(
                    "Username",
                    style: TextStyle(
                        color: Color(0xffA7AEBF),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: myHeight * 0.05,
                    width: myWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xff21242D),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(left: myWidth * 0.02),
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                            controller: userNameController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Enter your username",
                                hintStyle: TextStyle(
                                  // color: Color.fromARGB(255, 140, 143, 153),
                                  color: Color(0xff494D58),
                                ),
                                border: InputBorder.none),
                          )),
                        ],
                      ),
                    ),
                  ),
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
                    height: myHeight * 0.05,
                    width: myWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xff21242D),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(left: myWidth * 0.02),
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                            controller: emailController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Enter your email address",
                                hintStyle: TextStyle(
                                  // color: Color.fromARGB(255, 140, 143, 153),
                                  color: Color(0xff494D58),
                                ),
                                border: InputBorder.none),
                          )),
                        ],
                      ),
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
                    height: myHeight * 0.05,
                    width: myWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xff21242D),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(left: myWidth * 0.02),
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                            controller: passwordController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              hintStyle: TextStyle(
                                // color: Color.fromARGB(255, 140, 143, 153),
                                color: Color(0xff494D58),
                              ),
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.visibility_off),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: myHeight * 0.1),
                  Row(
                    children: [
                      Text(
                        "Accept ",
                        style: TextStyle(
                            color: Color(0xffA7AEBF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Terms of Use ",
                        style: TextStyle(
                            color: Color(0xffF5C249),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "& ",
                        style: TextStyle(
                            color: Color(0xffA7AEBF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                            color: Color(0xffF5C249),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: myHeight * 0.01),
                  GestureDetector(
                    onTap: () {
                      context.read<SignupCubit>().signup(
                          userNameController.text,
                          firstNameController.text,
                          lastNameController.text,
                          emailController.text,
                          passwordController.text);

                      //  Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginPage()));
                    },
                    child: Container(
                        height: myHeight * 0.05,
                        width: myWidth * 0.9,
                        decoration: BoxDecoration(
                            color: Color(0xffF5C249),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ))),
                  ),
                  SizedBox(height: myHeight * 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style:
                            TextStyle(color: Color(0xff494D58), fontSize: 16),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => BlocProvider(
                                          create: (context) => LoginCubit(),
                                          child: LoginPage(),
                                        )));
                          },
                          child: Text(
                            " Log in!",
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
