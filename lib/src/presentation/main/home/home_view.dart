import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/basket_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/home_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/my_profile_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/search_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/menu_page.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    MenuPage(),
    BasketPage(),
    MyProfilePage(),
  ];
  List<String> titles = const [
    StringsManager.home,
    StringsManager.search,
    StringsManager.menu,
    StringsManager.basket,
    StringsManager.myProfile,
  ];

  var _currentIndex = 0;
  ontap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: SizeManager.s0,
        title: Text(
          StringsManager.pullAndBearTitle,
          style: TextStyle(
            fontSize: FontSize.s25,
            fontWeight: FontWeight.bold,
            letterSpacing: SizeManager.s3,
            color: ColorManager.white,
          ),
        ),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: ColorManager.lightGrey,
            spreadRadius: SizeManager.s1,
          ),
        ]),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          iconSize: 26,
          unselectedFontSize: 13,
          selectedFontSize: 13,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorManager.black,
          unselectedItemColor: ColorManager.grey,
          currentIndex: _currentIndex,
          onTap: ontap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: StringsManager.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: StringsManager.search,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: StringsManager.menu,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: StringsManager.basket,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: StringsManager.myProfile,
            ),
          ],
        ),
      ),
    );
  }
}
