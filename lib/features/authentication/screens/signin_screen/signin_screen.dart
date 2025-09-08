import 'package:authentication_kit/features/authentication/screens/forgot_password/forgot_password_screen.dart';
import 'package:authentication_kit/features/authentication/screens/phone_signin/phone_signin.dart';
import 'package:authentication_kit/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:authentication_kit/features/authentication/screens/signup_screen/widgets/custom_iconbutton_with_border.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/image_strings.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
              Text("Login", style: Theme.of(context).textTheme.headlineMedium),

              SizedBox(height: CustomSizes.spaceBtwItems),

              // Form
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: CustomSizes.spaceBtwItems / 2),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Your Email",
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
                        hintText: "Your Password",
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                        hintStyle: TextStyle(color: CustomColors.textSecondary),
                      ),
                    ),
                    // Inside your LoginScreen form, below password field
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Navigate to ForgotPasswordScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: const Text("Forgot Password?"),
                      ),
                    ),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            CustomColors.black,
                          ),
                        ),
                        child: Text("Login"),
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
                          icon: FontAwesomeIcons.phone,
                          onPressed: () => Get.to(() => LoginWithPhoneScreen()),
                        ),
                      ],
                    ),
                    SizedBox(height: CustomSizes.spaceBtwSections),

                    Row(
                      children: [
                        Text(
                          r"Don’t have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () => Get.off(() => SignupScreen()),
                          child: Text(
                            "Signup",
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
