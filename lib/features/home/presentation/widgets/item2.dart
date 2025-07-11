import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:cryptoproject/features/home/presentation/pages/detail_page.dart';
import 'package:cryptoproject/features/home/data/model/coin_model.dart';
import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  final  item2;

  const Item2({super.key, required this.item2});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return
     Row(
      children: [
        Container(
          height: myHeight * 0.24,
          width: myWidth * 0.425,
          decoration: BoxDecoration(
              color: Color(0xff282B35), borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.only(top: myHeight * 0.02,left: myWidth*0.02),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: myWidth * 0.01),
                  child: Row(
                    children: [
                      Container(
                        height: myHeight*0.04,
                        child: Image.network(item2.image)),
                      SizedBox(
                        width: myWidth * 0.03,
                      ),
                      Expanded(
                          child: Text(
                        item2.name,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: myWidth * 0.02),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$" + item2.currentPrice.toStringAsFixed(1),
                            style:
                                TextStyle(fontSize: 18, color: Color(0xffA7AEBF)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            item2.marketCapChangePercentage24H.toStringAsFixed(2),
                            style: item2.marketCapChangePercentage24H >= 0 
                                ?TextStyle(fontSize: 14, color: Color(0xff00C566))
                                :TextStyle(fontSize: 14, color: Colors.red),
                          ),
        
                          Icon(
                            item2.marketCapChangePercentage24H>=0
                            ?Icons.arrow_drop_up
                            :Icons.arrow_drop_down,
        
                            color:item2.marketCapChangePercentage24H>=0
                             ?Color(0xff00C566)
                             :Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: myHeight*0.02,),
                Container(
                  height: myHeight * 0.07,
                  width: myWidth * 0.35,
                  child: Sparkline(
                    data: item2.sparklineIn7D.price,
                    lineWidth: 2,
                    lineColor: item2.marketCapChangePercentage24H>=0
                    ?Colors.green
                    :Colors.red,
                    fillMode: FillMode.below,
                    fillGradient: LinearGradient(
                      begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0.0, 0.7],
                       colors: item2.marketCapChangePercentage24H >= 0
                          ? [Colors.green, Colors.green.shade100]
                          :[Colors.red, Colors.red.shade100]
                    ),
                  )
                )
              ],
            ),
          ),
        ),
        SizedBox(width: myWidth*0.02,)
      ],
    );
  }
}
