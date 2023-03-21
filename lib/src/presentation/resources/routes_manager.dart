import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/presentation/favourites/favourites_view.dart';
import 'package:pull_and_bear_replica/src/presentation/forgot_password/forgot_password_view.dart';
import 'package:pull_and_bear_replica/src/presentation/login/login_view.dart';
import 'package:pull_and_bear_replica/src/presentation/main/home/home_view.dart';
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
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.favouritesRoute:
        return MaterialPageRoute(builder: (_) => const FavourtiesView());
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
