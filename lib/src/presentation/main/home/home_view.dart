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
  bool get isMyAccount => _currentIndex == 4;
  bool get isBasket => _currentIndex == 3;
  bool get isMenu => _currentIndex == 2;
  bool get isSearch => _currentIndex == 1;
  bool get isHome => _currentIndex == 0;

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

  AppBar appBar() {
    if (isHome) {
      return AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
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
      );
    } else if (isSearch) {
      return AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
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
      );
      //TODO: APPBAR SEARCH
    } else if (isMenu) {
      return AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
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
      );
      //TODO: APPBAR MENU
    } else if (isBasket) {
      return AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
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
      );
      //TODO APPBAR BASKET
    } else if (isMyAccount) {
      return AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
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
      );
      //TODO APPBAR MY ACCOUNT
    } else {
      return AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
        elevation: SizeManager.s0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      extendBodyBehindAppBar: true,
      appBar: appBar(),
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
          iconSize: SizeManager.s26,
          unselectedFontSize: FontSize.s13,
          selectedFontSize: FontSize.s13,
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
