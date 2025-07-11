import 'package:cryptoproject/features/auth/presentation/bloc/login_cubit.dart';
import 'package:cryptoproject/features/home/presentation/pages/detail_page.dart';
import 'package:cryptoproject/features/home/presentation/pages/home_page.dart';
import 'package:cryptoproject/features/home/presentation/widgets/item2.dart';
import 'package:cryptoproject/features/onboarding/onboarding.dart';
import 'package:cryptoproject/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: 
      Onboarding()
      
    );
  }
  
}
