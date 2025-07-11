import 'dart:convert';

import 'package:cryptoproject/features/home/data/model/coin_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<CoinModel> coinModel;
  HomeLoaded({required this.coinModel});
}

class HomeFailure extends HomeState {
  final String error;
  HomeFailure({required this.error});
}

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> homeLoaded() async {
    emit(HomeLoading());
    // List<CoinModel> coinMarket = [];
    const url =
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&sparkline=true';
    final dio = Dio();

    try {
      final response = await dio.get(url);

      if (response.statusCode == 200){
         final List<dynamic> data = response.data;
         final List<CoinModel> coinMarket = 
               data.map((json)=> CoinModel.fromJson(json)).toList();
         emit(HomeLoaded(coinModel: coinMarket));
         
      }else  {
        print(response.statusCode);
      }

    } catch (e) {
      print("error: " + "${e}");
      HomeFailure(error: "Khong the goi API");
    }
  }
}
