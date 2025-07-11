import 'dart:convert';

import 'package:cryptoproject/features/home/data/model/coin_model.dart';
import 'package:cryptoproject/features/home/presentation/bloc/home_cubit.dart';
import 'package:cryptoproject/features/home/presentation/widgets/item.dart';
import 'package:cryptoproject/features/home/presentation/widgets/item2.dart';
import 'package:cryptoproject/features/navigation/nav_bottom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // getCoinMarket();
    context.read<HomeCubit>().homeLoaded();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff16171D),
      appBar: AppBar(
        backgroundColor: Color(0xff16171D),
        iconTheme: IconThemeData(color: Colors.white),
        title: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(right: myWidth * 0.1),
              child: Center(child: Image.asset("asset/icons/bitcoin.png")),
            )
          ],
        ),
      ),
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeLoaded) {}
          return Container(
            height: myHeight,
            width: myWidth,
            child: ListView(children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: myWidth * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Image.asset("asset/icons/search.png"),
                            SizedBox(
                              width: myWidth * 0.05,
                            ),
                            Image.asset("asset/icons/alerts.png")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "asset/images/cards.png",
                        scale: 1,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: myWidth * 0.05),
                    child: Column(
                      children: [
                        SizedBox(
                          height: myHeight * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Coins",
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFFFFFF)),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffF5C249)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: myHeight * 0.03,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: BlocBuilder<HomeCubit, HomeState>(
                                builder: (context, state) {
                                  if (state is HomeLoaded) {
                                    return Container(
                                        height: myHeight * 0.24,
                                        // width: myWidth * 0.425,
                                        decoration: BoxDecoration(
                                            // color: Color(0xff282B35),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 4,
                                            itemBuilder: (context, index) {
                                              final product = state.coinModel;
                                              return Item2(
                                                  item2: product[index]);
                                            }));
                                  } else {
                                    return SizedBox();
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: myHeight * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Coins",
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFFFFFF)),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffF5C249)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: myHeight * 0.02,
                        ),
                        Column(
                          children: [
                            Container(
                                height: myHeight * 0.5,
                                width: myWidth * 0.9,
                                decoration: BoxDecoration(
                                    // color: Color(0xff21242D),
                                    borderRadius: BorderRadius.circular(15)),
                                child: BlocBuilder<HomeCubit, HomeState>(
                                  builder: (context, state) {
                                    if (state is HomeLoaded) {
                                      return Column(
                                        children: [
                                          Expanded(
                                              child: ListView.builder(
                                                  itemCount:
                                                      9,
                                                  itemBuilder:
                                                      (context, index) {
                                                    final product =
                                                        state.coinModel;
                                                    return Item(
                                                      item: product[index],
                                                    );
                                                  })),
                                        ],
                                      );
                                    } else {
                                      return SizedBox();
                                    }
                                  },
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ]),
          );
        },
      ),
    );
  }

  // bool isRefreshing = false;

  // List? coinMarket = [];
  // List<CoinModel> coinMarket = [];

  // Future<List<CoinModel>?> getCoinMarket() async {
  //   const url =
  //       'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&sparkline=true';
  //   setState(() {
  //     isRefreshing = true;
  //   });

  //   try {
  //     final dio = Dio();
  //     final response = await dio.get(url);

  //     if (response.statusCode == 200) {
  //       final List<dynamic> data = response.data;

  //       final List<CoinModel> parsedListCoin =
  //           data.map((json) => CoinModel.fromJson(json)).toList();
  //       //===
  //       // List<CoinModel> parsedListCoin = [];

  //       // for (var json in data) {
  //       //   final coin = CoinModel.fromJson(json);
  //       //   parsedListCoin.add(coin);
  //       // }

  //       setState(() {
  //         coinMarket = parsedListCoin;
  //       });
  //     } else {
  //       print(response.statusCode);
  //     }
  //   } catch (e) {
  //     print(e);
  //   } finally {
  //     setState(() {
  //       isRefreshing = false;
  //     });
  //   }
  // }
}
