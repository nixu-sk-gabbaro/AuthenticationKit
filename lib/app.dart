import 'package:authentication_kit/features/authentication/screens/openining_screen/opening_screen.dart';
import 'package:authentication_kit/utils/constants/text_strings.dart';
import 'package:authentication_kit/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: CustomTexts.appName,
      themeMode: ThemeMode.system,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OpeningScreen(),
      // initialRoute: AppRoutes.onboarding,
      // getPages: AppPages.pages,
    );
  }
}
