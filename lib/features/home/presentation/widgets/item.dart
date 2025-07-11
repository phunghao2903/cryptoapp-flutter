import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:cryptoproject/features/home/presentation/bloc/detail_cubit.dart';
import 'package:cryptoproject/features/home/presentation/pages/detail_page.dart';
import 'package:cryptoproject/features/home/data/model/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Item extends StatelessWidget {
  final item;

  const Item({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => DetailCubit(),
                child: DetailPage(
                  selectItem: item,
                ),
              ),
            ));
      },
      child: Column(
        children: [
          Container(
            height: myHeight * 0.08,
            width: myWidth * 0.9,
            decoration: BoxDecoration(
                color: Color(0xff21242D),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: myWidth * 0.02),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        height: myHeight * 0.04,
                        child: Image.network(
                          item.image,
                          scale: 0.5,
                        )),
                  ),
                  SizedBox(
                    width: myWidth * 0.02,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          item.symbol,
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff6C757D)),
                        )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: myWidth * 0.07,
                  // ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: myHeight * 0.05,
                      width: myWidth * 0.3,
                      child: Sparkline(
                        data: item.sparklineIn7D.price,
                        lineWidth: 2.0,
                        lineColor: item.marketCapChangePercentage24H >= 0
                            ? Colors.green
                            : Colors.red,
                        fillMode: FillMode.below,
                        fillGradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0.0, 0.7],
                            colors: item.marketCapChangePercentage24H >= 0
                                ? [Colors.green, Colors.green.shade100]
                                : [Colors.red, Colors.red.shade100]),
                      ),
                    ),
                  ),

                  // Image.asset('asset/images/graphBTC.png'),
                  SizedBox(
                    width: myWidth * 0.02,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              // "\$" + "${item.currentPrice}",
                              "\$" + item.currentPrice.toStringAsFixed(1),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              // "2.05 "+ "${item.symbol}",
                              item.priceChange24H.toStringAsFixed(2),
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff6C757D),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              // "2.05 "+ "${item.symbol}",
                              item.marketCapChangePercentage24H
                                  .toStringAsFixed(2),
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff6C757D),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: myHeight * 0.02,
          ),
        ],
      ),
    );
  }
}
