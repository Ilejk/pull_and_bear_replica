import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/app/app_preferences.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/data/data_source/local_data_source.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/basket_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/home_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/my_profile_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/search_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/menu_page.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/routes_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  final LocalDataSource _localDataSource = instance<LocalDataSource>();
  bool get isMyAccount => _currentIndex == 4;
  bool get isBasket => _currentIndex == 3;
  bool get isMenu => _currentIndex == 2;
  bool get isSearch => _currentIndex == 1;
  bool get isHome => _currentIndex == 0;
  bool index = true;
  bool isLoggedIn = false;
  bool showBottomSheet = true;
  Future<void> _isUserLoggedInCheck() async {
    _appPreferences.isUserLoggedIn().then((isUserLoggedIn) {
      if (isUserLoggedIn) {
        isLoggedIn = true;
      } else {
        isLoggedIn = false;
      }
    });
  }

  List<String> titles = const [
    StringsManager.home,
    StringsManager.search,
    StringsManager.menu,
    StringsManager.basket,
    StringsManager.myProfile,
  ];

  List<Widget> menuBottomSheet = [
    InkWell(
      onTap: () {
        //TODO ON TAP
      },
      child: Container(
        width: double.infinity,
        height: SizeManager.s60,
        color: ColorManager.blue,
      ),
    ),
    InkWell(
      onTap: () {
        //TODO ON TAP
      },
      child: Container(
        width: double.infinity,
        height: SizeManager.s60,
        color: ColorManager.green,
      ),
    ),
    InkWell(
      onTap: () {
        //TODO ON TAP
      },
      child: Container(
        width: double.infinity,
        height: SizeManager.s60,
        color: ColorManager.black,
      ),
    ),
    InkWell(
      onTap: () {
        //TODO ON TAP
      },
      child: Container(
        width: double.infinity,
        height: SizeManager.s60,
        color: ColorManager.lightGrey,
      ),
    ),
  ];
  var _currentIndex = 0;
  ontap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _selectRegion() {
    //TODO
  }

  void _logout() {
    _appPreferences.logout();
    _localDataSource.clearCache();
    Navigator.of(context).pushReplacementNamed(Routes.mainRoute);
  }

  appBar() {
    if (isHome) {
      return AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.search,
          size: SizeManager.s24,
          color: ColorManager.white,
        ),
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
        backgroundColor: ColorManager.white,
        automaticallyImplyLeading: false,
        elevation: SizeManager.s8,
        actions: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  index = false;
                });
              },
              child: Container(
                height: SizeManager.s50,
                decoration: BoxDecoration(
                  color:
                      isWoman ? ColorManager.white : ColorManager.veryLighGrey,
                  border: Border(
                    top: BorderSide(
                      color: ColorManager.veryLighGrey,
                      width: SizeManager.s0_7,
                    ),
                    bottom: BorderSide(
                      color: isWoman
                          ? ColorManager.black
                          : ColorManager.veryLighGrey,
                      width: SizeManager.s3,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    StringsManager.woman,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontConstants.fontFamily,
                      fontSize: FontSize.s18,
                      fontWeight: FontWeight.w700,
                      color:
                          isWoman ? ColorManager.black : ColorManager.lightGrey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  index = true;
                });
              },
              child: Container(
                height: SizeManager.s50,
                decoration: BoxDecoration(
                  color: isMan ? ColorManager.white : ColorManager.veryLighGrey,
                  border: Border(
                    top: BorderSide(
                      color: ColorManager.veryLighGrey,
                      width: SizeManager.s0_7,
                    ),
                    bottom: BorderSide(
                      color: isMan
                          ? ColorManager.black
                          : ColorManager.veryLighGrey,
                      width: SizeManager.s3,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    StringsManager.man,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontConstants.fontFamily,
                      fontSize: FontSize.s18,
                      fontWeight: FontWeight.w700,
                      color:
                          isMan ? ColorManager.black : ColorManager.lightGrey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
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
    } else if (isMyAccount && !isLoggedIn) {
      return AppBar(
        shape: Border(
          bottom: BorderSide(
            color: ColorManager.black,
            width: SizeManager.s0_5,
          ),
        ),
        backgroundColor: ColorManager.white,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
        elevation: SizeManager.s0,
        leading: Icon(
          Icons.question_mark,
          size: SizeManager.s24,
          color: ColorManager.black,
        ),
        title: Text(
          StringsManager.logInOrRegisterTitle,
          style: TextStyle(
            fontSize: FontSize.s20,
            fontWeight: FontWeight.bold,
            letterSpacing: SizeManager.s3,
            color: ColorManager.black,
          ),
        ),
      );
    } else if (isMyAccount && isLoggedIn) {
      return AppBar(
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              _selectRegion();
            },
            icon: Icon(
              Icons.language_sharp,
              size: SizeManager.s24,
              color: ColorManager.black,
            ),
          ),
          IconButton(
            onPressed: () {
              _logout();
            },
            icon: Icon(
              Icons.logout_sharp,
              size: SizeManager.s24,
              color: ColorManager.black,
            ),
          ),
        ],
        shape: Border(
          bottom: BorderSide(
            color: ColorManager.black,
            width: SizeManager.s0_5,
          ),
        ),
        backgroundColor: ColorManager.white,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
        elevation: SizeManager.s0,
        title: Text(
          StringsManager.myAccount,
          style: TextStyle(
            fontSize: FontSize.s20,
            fontWeight: FontWeight.bold,
            letterSpacing: SizeManager.s3,
            color: ColorManager.black,
          ),
        ),
      );
    } else {
      return AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: SizeManager.s50,
        automaticallyImplyLeading: false,
        elevation: SizeManager.s0,
      );
    }
  }

  bool get isWoman => index == false;

  bool get isMan => index == true;

  @override
  void initState() {
    _isUserLoggedInCheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePage(index),
      const SearchPage(),
      MenuPage(index),
      const BasketPage(),
      const MyProfilePage(),
    ];

    return Scaffold(
      backgroundColor: ColorManager.white,
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      bottomSheet: isMenu && isShowBottomSheet
          ? CarouselSlider(
              items: menuBottomSheet,
              options: CarouselOptions(
                height: SizeManager.s60,
                autoPlay: true,
                enableInfiniteScroll: true,
                viewportFraction: SizeManager.s1,
              ),
            )
          : Container(
              height: SizeManager.s0,
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

  bool get isShowBottomSheet => showBottomSheet == true;
}
