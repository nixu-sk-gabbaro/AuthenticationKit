import 'package:authentication_kit/features/authentication/screens/signup_screen/widgets/custom_iconbutton_with_border.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/image_strings.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(
          right: CustomSizes.defaultSpace,
          top: CustomSizes.defaultSpace - 8,
        ),
        actions: [
          Image.asset(
            CustomImages.appLogoWithoutBG,
            width: CustomSizes.iconLg * 2,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "Create account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(height: CustomSizes.spaceBtwSections),

              // Form
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: CustomSizes.spaceBtwItems / 2),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "You Username",
                        hintStyle: TextStyle(color: CustomColors.textSecondary),
                      ),
                    ),
                    SizedBox(height: CustomSizes.spaceBtwItems),

                    Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: CustomSizes.spaceBtwItems / 2),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "You Email",
                        hintStyle: TextStyle(color: CustomColors.textSecondary),
                      ),
                    ),
                    SizedBox(height: CustomSizes.spaceBtwItems),

                    Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: CustomSizes.spaceBtwItems / 2),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "You Password",
                        hintStyle: TextStyle(color: CustomColors.textSecondary),
                      ),
                    ),
                    SizedBox(height: CustomSizes.spaceBtwSections),

                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        Text("I accept the terms and privacy policy."),
                      ],
                    ),
                    SizedBox(height: CustomSizes.spaceBtwSections),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            CustomColors.black,
                          ),
                        ),
                        child: Text("Signup"),
                      ),
                    ),
                    SizedBox(height: CustomSizes.spaceBtwSections),

                    // Social Buttons
                    Center(child: Text("Or continue with")),
                    SizedBox(height: CustomSizes.spaceBtwItems),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomIconButtonwithBorder(
                          icon: FontAwesomeIcons.facebook,
                          onPressed: () {},
                        ),
                        CustomIconButtonwithBorder(
                          icon: FontAwesomeIcons.google,
                          onPressed: () {},
                        ),
                        CustomIconButtonwithBorder(
                          icon: FontAwesomeIcons.apple,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: CustomSizes.spaceBtwSections),

                    Row(
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Signin",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
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
