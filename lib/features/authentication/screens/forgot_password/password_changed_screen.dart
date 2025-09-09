import 'package:authentication_kit/features/authentication/screens/signin_screen/signin_screen.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/image_strings.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:authentication_kit/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              CustomTexts.passwordChanged,
              style: Theme.of(
                context,
              ).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: CustomSizes.spaceBtwItems),
            Text(
              CustomTexts.passwordChangedSubtitle,

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
                onPressed: () {
                  Get.offAll(() => const SigninScreen());
                },
                child: Text("Back to Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
