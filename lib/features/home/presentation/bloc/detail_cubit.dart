
import 'dart:convert';

import 'package:cryptoproject/features/home/data/model/chart_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

abstract class DetailState{}
class DetailInitial extends DetailState{}
class DetailLoading extends DetailState{}
class DetailLoaded extends DetailState{
  final List<ChartModel> itemChart;
  final int selectedIndex;
  final List<int> timeDay;
  final List<String> timeChart;
  final bool HeartCoin;
  DetailLoaded({required this.itemChart,required this.selectedIndex,required this.timeDay,required this.timeChart,required this.HeartCoin});
}




class DetailFailure extends DetailState{
  final String error;
  DetailFailure({required this.error});
  
}


class DetailCubit extends Cubit<DetailState>{
    //  bool _heartCubit = false; 
     Set<String> _favouriteCoins={};
     String? _currentCoinId;
     
     DetailCubit(): super(DetailInitial());
     List<int> _timeDays = [1, 7, 30, 90, 180, 365];
     List<String> _timeChart = ['D', 'W', 'M', '3M', '6M', 'Y'];
     int _selectedIndex=0;


     Future<void> selectTimeIndex(int index,String coinId) async{
         _selectedIndex = index;
         emit(DetailLoading());
         int day = _timeDays[index];

         try{
              final url="https://api.coingecko.com/api/v3/coins/${coinId}/ohlc?vs_currency=usd&days=${day}";
              final dio = Dio();

              final response = await dio.get(url);

              if(response.statusCode ==200){
                 List<dynamic> data = response.data;
                 List<ChartModel> parsedListItem = data.map((json)=> ChartModel.fromList(json)).toList();
                 emit(DetailLoaded(itemChart: parsedListItem, selectedIndex: _selectedIndex,
                  timeDay: _timeDays,timeChart: _timeChart,HeartCoin: _favouriteCoins.contains(coinId)));
              } else{
                print(response.statusCode);
              }
         }catch(e){
           print(e);

         }



     }

     Future<void> getChart(String coinId,int day)async {
       emit(DetailLoading());
       _currentCoinId =coinId;
        final url ="https://api.coingecko.com/api/v3/coins/${coinId}/ohlc?vs_currency=usd&days=${day}";
        final dio = Dio();
        try{
          final response = await dio.get(url);
          if(response.statusCode ==200){
             final List<dynamic> data = response.data;
             final List<ChartModel> listChart = data.map((json)=> ChartModel.fromList(json)).toList();
             emit(DetailLoaded(itemChart: listChart,selectedIndex: _selectedIndex,timeDay: _timeDays,timeChart: _timeChart,HeartCoin: _favouriteCoins.contains(coinId)));
          }else{
            print(response.statusCode);
          }

        }catch(e){
          print(e);
          emit(
          DetailFailure(error: "Loi lay du lieu chart"));

        } 
     }

     void heart(String coinId){
      
       if(_favouriteCoins.contains(coinId)){
        _favouriteCoins.remove(coinId);
       } else{
        _favouriteCoins.add(coinId);
       }


      final currentState =state;
      if(currentState is DetailLoaded){
        emit(DetailLoaded(itemChart: currentState.itemChart, selectedIndex: currentState.selectedIndex, 
        timeDay: currentState.timeDay, timeChart: currentState.timeChart, HeartCoin: _favouriteCoins.contains(coinId)));
      }
   
        
     }
     
     List<String> get favouriteCoins => _favouriteCoins.toList();
    
}


