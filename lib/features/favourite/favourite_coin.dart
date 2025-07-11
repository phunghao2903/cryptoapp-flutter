import 'package:cryptoproject/features/home/presentation/bloc/detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteCoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Favourite",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Color(0xff16171D),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Color(0xff16171D),
      body: Container(
        height: myHeight,
        width: myWidth,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: myWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("My Favourite Coin ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("(5)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: myHeight * 0.02,
              ),
              Expanded(
                child: BlocBuilder<DetailCubit, DetailState>(
                  builder: (context, state) {
                    final favouriteList =
                        context.watch<DetailCubit>().favouriteCoins;

                    if (favouriteList.isEmpty) {
                      return Center(
                        child: Text(
                          "Chưa có coin yêu thích",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }

                    return ListView.builder(
                      itemCount: favouriteList.length,
                      itemBuilder: (context, index) {
                        final coinId = favouriteList[index];

                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xff21242D),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "asset/icons/bitcoin2.png", // Tạm dùng icon cứng
                                    scale: 0.7,
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        coinId, // Hiển thị ID coin
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        coinId.toLowerCase(),
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.favorite, color: Colors.red),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: myHeight * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
