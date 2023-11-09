import 'package:flutter/material.dart';
import 'package:semi_ecommerce_app/core/navigation/routes.dart';
import 'package:semi_ecommerce_app/features/auth/auth_screen.dart';
import 'package:semi_ecommerce_app/features/login/login_screen.dart';
import 'package:semi_ecommerce_app/features/main/main_screen.dart';
import 'package:semi_ecommerce_app/features/onboarding/onboarding.dart';
import 'package:semi_ecommerce_app/features/sign_up/sign_up_screen.dart';
import 'package:semi_ecommerce_app/features/splash/splash_screen.dart';

/// Global Context of App
BuildContext? get currentContext =>
    CustomNavigator.navigatorState.currentContext;

abstract class CustomNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();

  static Route<dynamic> onCreateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.MAIN_SCREEN:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.BOARDING:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.AUTH:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case Routes.LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.SIGN_UP:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      // case Routes.MEETING:
      // return MaterialPageRoute(builder: (_) =>const  MeetingWidget());

      default:
        {
          return MaterialPageRoute(builder: (_) => const SplashScreen());
        }
    }
  }

  static void pop({dynamic result}) {
    if (navigatorState.currentState!.canPop()) {
      navigatorState.currentState!.pop(result);
    }
  }

  // track navigation of user
  static push(
    String routeName, {
    arguments,
    bool replace = false,
    bool clean = false,
  }) {
    // UserEvents.instance.logScreens(name: routeName);
    if (clean) {
      return navigatorState.currentState!.pushNamedAndRemoveUntil(
        routeName,
        (_) => false,
        arguments: arguments,
      );
    } else if (replace) {
      return navigatorState.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    } else {
      return navigatorState.currentState!
          .pushNamed(routeName, arguments: arguments);
    }
  }
}
