import 'package:flutter/material.dart';

class ItemFavourite extends StatelessWidget {
  const ItemFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
                height: myHeight * 0.08,
                width: myWidth * 0.9,
                decoration: BoxDecoration(
                    color: Color(0xff21242D),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: myWidth*0.02,vertical: myHeight*0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // height:  myHeight*0.8,
                          Image.asset(
                            "asset/icons/bitcoin2.png",
                            scale: 0.7,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bitcoin",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                              Text("btc",style: TextStyle(fontSize: 18,color: Colors.white),)
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("75.6",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),),
                              Text("-0.10 (-0.13%)",style: TextStyle(fontSize: 14,color: Colors.green),)
                            
                            ],
                          ),
                          SizedBox(width: myWidth*0.04,),
                          Icon(Icons.favorite,color: Colors.red,),
                        ],
                      ),
                    ],
                  ),
                ),
                
              );
  }
}