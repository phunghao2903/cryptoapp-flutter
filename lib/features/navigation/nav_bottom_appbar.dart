import 'package:cryptoproject/features/favourite/favourite_coin.dart';
import 'package:cryptoproject/features/home/presentation/bloc/detail_cubit.dart';
import 'package:cryptoproject/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBottomAppbar extends StatefulWidget {
  const NavBottomAppbar({super.key});

  @override
  State<NavBottomAppbar> createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<NavBottomAppbar> {
  int _currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    BlocProvider(
      create: (context) => DetailCubit(),
      child: FavouriteCoin(),
    ),
    HomePage(),
    HomePage(),
  ];

  Widget tabButton({
    required String iconName,
    required String label,
    required int index,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        children: [
          Image.asset(iconName,
              color: _currentIndex == index
                  ? Color(0xffF5C249)
                  : Color(0xff787A8D)),
          Text(
            label,
            style: TextStyle(
                color: _currentIndex == index
                    ? Color(0xffF5C249)
                    : Color(0xff787A8D)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff16171D),
        body: pages.elementAt(_currentIndex),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {},
          backgroundColor: Color(0xffF5C249),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: myHeight * 0.05,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Color(0xff262932),
          height: myHeight * 0.081,
          notchMargin: 15,
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: myWidth * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    tabButton(
                        iconName: 'asset/icons/home.png',
                        label: "Home",
                        index: 0),
                    SizedBox(
                      width: myWidth * 0.1,
                    ),
                    tabButton(
                        iconName: 'asset/icons/market.png',
                        label: "Favourite",
                        index: 1),
                  ],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    tabButton(
                        iconName: 'asset/icons/porfolio.png',
                        label: "Porfolio",
                        index: 2),
                    SizedBox(
                      width: myWidth * 0.1,
                    ),
                    tabButton(
                        iconName: 'asset/icons/setting.png',
                        label: "setting",
                        index: 3)
                  ],
                ),
              ],
            ),
          ),
        ),

        //   bottomNavigationBar: BottomNavigationBar(
        //     currentIndex: _currentIndex,

        //     showSelectedLabels: false,
        //     showUnselectedLabels: false,
        //     backgroundColor: Color(0xff262932),

        //     type: BottomNavigationBarType.fixed,
        //     onTap:((value){
        //       setState(() {
        //         _currentIndex =value;
        //       });

        //     }) ,
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: Image.asset('asset/icons/home.png',
        //         height: myHeight*0.05,

        //         color: Color(0xff787A8D),
        //         ),
        //         label: 'Home',
        //         activeIcon:Image.asset('asset/icons/home.png',
        //         height: myHeight*0.05,
        //         color: Color(0xffF5C249),
        //         ),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Image.asset('asset/icons/market.png',
        //         height: myHeight*0.05,
        //         color: Color(0xff787A8D),
        //         ),
        //         label: 'Home',
        //         activeIcon:Image.asset('asset/icons/market.png',
        //         height: myHeight*0.05,
        //         color: Color(0xffF5C249),
        //         ),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Image.asset('asset/icons/porfolio.png',
        //         height: myHeight*0.05,
        //         color: Color(0xff787A8D),
        //         ),
        //         label: 'Home',
        //         activeIcon:Image.asset('asset/icons/porfolio.png',
        //         height: myHeight*0.05,
        //         color: Color(0xffF5C249),
        //         ),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Image.asset('asset/icons/setting.png',
        //         height: myHeight*0.05,
        //         color: Color(0xff787A8D),
        //         ),
        //         label: 'Home',
        //         activeIcon:Image.asset('asset/icons/setting.png',
        //         height: myHeight*0.05,
        //         color: Color(0xffF5C249),
        //         ),
        //       ),

        //     ]
        //   )
      ),
    );
  }
}
