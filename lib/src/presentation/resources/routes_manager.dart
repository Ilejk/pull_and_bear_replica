import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/favourites/favourites_view.dart';
import 'package:pull_and_bear_replica/src/presentation/forgot_password/forgot_password_view.dart';
import 'package:pull_and_bear_replica/src/presentation/main/home/home_view.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/main_pages/my_profile_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/menu_pages/new/menu_new_man_page.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/menu_pages/new/menu_new_woman_page.dart';
import 'package:pull_and_bear_replica/src/presentation/register/register_view.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/splash/splash_view.dart';
import 'package:pull_and_bear_replica/src/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String favouritesRoute = '/favourites';
  static const String menuNewWomanPage = '/menuNewWomanPage';
  static const String menuNewManPage = '/menuNewManPage';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const MyProfilePage());
      case Routes.registerRoute:
        initRegisterdModule();
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.mainRoute:
        initHomeModule();
        initMenuModule();
        initLoginModule();
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.favouritesRoute:
        return MaterialPageRoute(builder: (_) => const FavourtiesView());
      case Routes.menuNewWomanPage:
        initNewCatMenuModule();
        return MaterialPageRoute(builder: (_) => const MenuNewWomanPage());
      case Routes.menuNewManPage:
        initNewCatMenuModule();
        return MaterialPageRoute(builder: (_) => const MenuNewManPage());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(StringsManager.noRouteFound),
        ),
        body: const Center(
          child: Text(StringsManager.noRouteFound),
        ),
      ),
    );
  }
}
