import 'package:authentication_kit/features/authentication/screens/phone_signin/phone_signin.dart';
import 'package:authentication_kit/features/authentication/screens/signin_screen/signin_screen.dart';
import 'package:authentication_kit/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:authentication_kit/features/authentication/screens/signup_screen/widgets/custom_auth_button_with_icons_and_text.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/image_strings.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:authentication_kit/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SignupIntroScreen extends StatelessWidget {
  const SignupIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(CustomSizes.defaultSpace),

                decoration: BoxDecoration(
                  color: CustomColors.accent,
                  borderRadius: BorderRadius.circular(
                    CustomSizes.borderRadiusLg,
                  ),
                ),
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
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
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
                    SizedBox(height: CustomSizes.spaceBtwSections - 7),

                    CustomAuthButtonWithIconsAndText(
                      icon: FontAwesomeIcons.google,
                      text: "Continue with Google",
                    ),
                    SizedBox(height: CustomSizes.spaceBtwItems),
                    CustomAuthButtonWithIconsAndText(
                      onTap: () => Get.to(() => LoginWithPhoneScreen()),
                      icon: FontAwesomeIcons.phone,
                      text: "Continue with Phone",
                    ),
                    SizedBox(height: CustomSizes.spaceBtwItems),
                    CustomAuthButtonWithIconsAndText(
                      onTap: () => Get.off(() => SignupScreen()),
                      icon: Icons.mail,
                      text: "Continue with Email",
                    ),
                  ],
                ),
              ),
              SizedBox(height: CustomSizes.spaceBtwSections),

              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () => Get.off(() => SigninScreen()),
                      child: Text(
                        "Signin",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
