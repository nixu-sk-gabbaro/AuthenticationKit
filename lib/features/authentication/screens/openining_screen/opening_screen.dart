import 'package:authentication_kit/features/authentication/screens/signup_screen/signup_intro_screen.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/image_strings.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:authentication_kit/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Center(
                child: Image(
                  width: 250,
                  height: 250,
                  image: AssetImage(CustomImages.appLogoWithoutBG),
                ),
              ),

              SizedBox(height: CustomSizes.spaceBtwSections),

              Text(
                CustomTexts.openingScreenTitle,
                style: Theme.of(
                  context,
                ).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: CustomSizes.spaceBtwItems),
              Text(
                CustomTexts.openingScreenSubtitle,

                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: CustomColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CustomSizes.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(CustomColors.black),
                  ),
                  onPressed: () {},
                  child: Text(CustomTexts.login),
                ),
              ),
              SizedBox(height: CustomSizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,

                child: OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      CustomColors.secondary,
                    ),
                  ),
                  onPressed: () {
                    Get.off(() => SignupIntroScreen());
                  },
                  child: Text(CustomTexts.createAccount),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
