import 'package:cryptoproject/features/auth/presentation/bloc/login_cubit.dart';
import 'package:cryptoproject/features/auth/presentation/bloc/signup_cubit.dart';
import 'package:cryptoproject/features/auth/presentation/pages/login_page.dart';
import 'package:cryptoproject/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff16171D),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: myHeight * 0.1),
            child: Image.asset('asset/images/onboarding.png'),
          ),
          SizedBox(
            height: myHeight * 0.1,
          ),
          Padding(
            padding: EdgeInsets.only(left: myWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Fast And Flexible  ",
                      style: TextStyle(
                          fontSize: 35.5,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF8F8F8)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Trading ",
                      style: TextStyle(
                          fontSize: 35.5,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF8F8F8)),
                    ),
                  ],
                ),
                SizedBox(
                  height: myHeight * 0.1,
                ),
                Row(
                  children: [
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
                      child: Container(
                        height: myHeight * 0.05,
                        width: myWidth * 0.4,
                        decoration: BoxDecoration(
                            // color: Color(0xffF5c249),

                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xffF5c249),
                              width: 2,
                            )),
                        child: Center(
                            child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffF5c249)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: myWidth * 0.05,
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
                      child: Container(
                        height: myHeight * 0.05,
                        width: myWidth * 0.4,
                        decoration: BoxDecoration(
                            color: Color(0xffF5c249),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Log in",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
