import 'package:cryptoproject/features/home/data/model/chart_model.dart';
import 'package:cryptoproject/features/home/presentation/bloc/detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatefulWidget {
  var selectItem;
  DetailPage({required this.selectItem});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late TrackballBehavior trackballBehavior;
  late ZoomPanBehavior zoomPanBehavior;

  @override
  void initState() {
    super.initState();
    // getChart();

    trackballBehavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);

    zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      zoomMode: ZoomMode.x,
      enablePanning: true,
    );
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   context.read<DetailCubit>().getChart(widget.selectItem.id, 1);
    // });
    context.read<DetailCubit>().getChart(widget.selectItem.id, 1);
  }

  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    double myHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff16171D),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Color(0xff16171D),
      body: BlocConsumer<DetailCubit, DetailState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          // bool _heart = false;
          // if (state is DetailHeart) {
          //   _heart = state.heartCubit;
          // }

          return Container(
            height: myHeight,
            width: myWidth,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: myWidth * 0.05),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Image.asset("asset/icons/ethIcon.png",scale: 0.8,),
                          Container(
                              height: myHeight * 0.07,
                              child: Image.network(widget.selectItem.image)),
                          SizedBox(
                            width: myWidth * 0.05,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(widget.selectItem.name,
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: myWidth * 0.02,
                                  ),
                                  GestureDetector(onTap: () {
                                    context.read<DetailCubit>().heart(widget.selectItem.id);
                                  }, child:
                                      BlocBuilder<DetailCubit, DetailState>(
                                        
                                    builder: (context, state) {
                                      if(state is DetailLoaded){
                                        return Container(
                                        child: Icon(
                                          state.HeartCoin
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                      );

                                      }else {
                                         return SizedBox();
                                      }
                                      
                                    },
                                  ))
                                ],
                              ),
                              Text(
                                widget.selectItem.symbol,
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff6C757D)),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("\$ ${widget.selectItem.currentPrice}",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "2.05 ${widget.selectItem.symbol}",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff6C757D)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: myHeight * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "High",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffA7AEBF)),
                          ),
                          Text(
                            "${widget.selectItem.high24H.toStringAsFixed(0)}",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Low",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffA7AEBF)),
                          ),
                          Text(
                            "${widget.selectItem.low24H.toStringAsFixed(0)}",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Vol",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffA7AEBF)),
                          ),
                          Text(
                            "${widget.selectItem.totalVolume.toStringAsFixed(0)}",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: myHeight * 0.02,
                  ),
                  Container(
                    height: myHeight * 0.05,
                    child: BlocBuilder<DetailCubit, DetailState>(
                      builder: (context, state) {
                        if (state is DetailLoaded) {
                          return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: state.timeDay.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: myWidth * 0.02),
                                child: GestureDetector(
                                  onTap: () {
                                    context.read<DetailCubit>().selectTimeIndex(
                                        index, widget.selectItem.id);
                                  },
                                  child: Container(
                                    height: myHeight * 0.03,
                                    width: myWidth * 0.1,
                                    decoration: BoxDecoration(
                                        color: state.selectedIndex == index
                                            ? Color(0xffF5C249)
                                            : Color(0xffA7AEBF),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                        child: Text(
                                      "${state.timeChart[index]}",
                                      style: TextStyle(
                                          color: Color(0xff16171D),
                                          fontWeight: FontWeight.w600),
                                    )),
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          return SizedBox();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: myHeight * 0.02,
                  ),
                  Container(
                    height: myHeight * 0.4,
                    width: myWidth * 0.9,
                    decoration: BoxDecoration(color: Color(0xff282B35)),
                    child: BlocBuilder<DetailCubit, DetailState>(
                      builder: (context, state) {
                        if (state is DetailLoaded) {
                          return SfCartesianChart(
                            trackballBehavior: trackballBehavior,
                            zoomPanBehavior: ZoomPanBehavior(
                                enablePinching: true, zoomMode: ZoomMode.x),
                            series: <CandleSeries>[
                              CandleSeries<ChartModel, int>(
                                // enableSolidCandles: true,
                                enableTooltip: true,
                                bullColor: Colors.green,
                                bearColor: Colors.red,
                                dataSource: state.itemChart.length > 100
                                    ? state.itemChart
                                        .sublist(state.itemChart.length - 100)
                                    : state.itemChart,
                                xValueMapper: (ChartModel sales, _) =>
                                    sales.time,
                                lowValueMapper: (ChartModel sales, _) =>
                                    sales.low,
                                highValueMapper: (ChartModel sales, _) =>
                                    sales.high,
                                openValueMapper: (ChartModel sales, _) =>
                                    sales.open,
                                closeValueMapper: (ChartModel sales, _) =>
                                    sales.close,
                                animationDuration: 0,
                              )
                            ],
                          );
                        } else if (state is DetailLoading) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return SizedBox();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: myHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        width: myWidth * 0.425,
                        height: myHeight * 0.05,
                        decoration: BoxDecoration(
                            color: Color(0xffF5C249),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Buy",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff16171D)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: myWidth * 0.05,
                      ),
                      Container(
                        width: myWidth * 0.425,
                        height: myHeight * 0.05,
                        decoration: BoxDecoration(
                            // color: Color(0xffF5C249),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Text(
                            "Sell",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: myHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "At Price | USD",
                            style: TextStyle(
                                color: Color(0xffA7AEBF), fontSize: 14),
                          ),
                          Text(
                            "0.031",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: myHeight * 0.01,
                  ),
                  Divider(),
                  SizedBox(
                    height: myHeight * 0.01,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amount",
                            style: TextStyle(
                                color: Color(0xffA7AEBF), fontSize: 14),
                          ),
                          Text(
                            "345 USD",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // List<String> timeChart = ['D', 'W', 'M', '3M', '6M', 'Y'];
  // List<bool> timeSelected = [true, false, false, false, false, false];
  // int day = 1;
  // setDays(String days) {
  //   if (days == "D") {
  //     day = 1;
  //   } else if (days == "W") {
  //     day = 7;
  //   } else if (days == "M") {
  //     day = 30;
  //   } else if (days == "3M") {
  //     day = 90;
  //   } else if (days == "6M") {
  //     day = 180;
  //   } else if (days == "Y") {
  //     day = 365;
  //   }
  // }

  // bool isRefresh = false;

  // List<ChartModel>? itemChart;
  // Future<void> getChart() async {
  //   final url =
  //       "https://api.coingecko.com/api/v3/coins/${widget.selectItem.id}/ohlc?vs_currency=usd&days=${day}";

  //   setState(() {
  //     isRefresh = true;
  //   });
  //   try {
  //     final dio = Dio();
  //     final response = await dio.get(url);

  //     setState(() {
  //       isRefresh = true;
  //     });

  //     if (response.statusCode == 200) {
  //       final List<dynamic> data = response.data;
  //       final List<ChartModel> parsedListItem =
  //           data.map((json) => ChartModel.fromList(json)).toList();
  //       setState(() {
  //         itemChart = parsedListItem;
  //         isRefresh = false;
  //       });
  //     } else {
  //       print(response.statusCode);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
