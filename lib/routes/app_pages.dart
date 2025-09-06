import 'package:authentication_kit/features/authentication/screens/openining_screen/opening_screen.dart';
import 'package:authentication_kit/features/authentication/screens/signup_screen/signup_intro_screen.dart';
import 'package:authentication_kit/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.openingScreen, page: () => const OpeningScreen()),
    GetPage(
      name: AppRoutes.signupIntroScreen,
      page: () => const SignupIntroScreen(),
    ),
  ];
}
