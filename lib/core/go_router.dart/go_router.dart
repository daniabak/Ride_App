import 'package:go_router/go_router.dart';
import 'package:rideshare_app/screens/onbarding_screen.dart';
import 'package:rideshare_app/screens/auth_screens/signUp.dart/combleteSignUp.dart';
import 'package:rideshare_app/screens/auth_screens/signUp.dart/signUp.dart';
import 'package:rideshare_app/screens/auth_screens/login/sign_in.dart';
import 'package:rideshare_app/screens/welcom_screen.dart';

class Routes {
  static String signUpPath = "/SignUp";
  static String completeSignUpPath = "/SetPasswordSignUp";
  static String signInPath = "/SignInPage";
  static String homePath = "";
  static String welcomePath = "/WelcomeScreen";
  static String onBoardingPath = "/";
  GoRouter router = GoRouter(routes: [
    GoRoute(
      path: onBoardingPath,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: welcomePath,
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: signUpPath,
      builder: (context, state) => SignUp(),
    ),
    GoRoute(
      path: completeSignUpPath,
      builder: (context, state) => SetPasswordSignUp(),
    ),
    GoRoute(
      path: signInPath,
      builder: (context, state) => SignInPage(),
    ),
  ]);
}
