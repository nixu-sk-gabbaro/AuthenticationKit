import 'package:authentication_kit/features/authentication/screens/forgot_password/Forgot%20Password%20%E2%80%93%20Enter%20Code%20Screen.dart';
import 'package:flutter/material.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password")),
      body: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot your password?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems),
            const Text(
              "Enter your registered email or phone number to receive a verification code.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Email/Phone Input
            TextField(decoration: const InputDecoration(labelText: "Email")),
            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const ForgotPasswordCodeScreen());
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(CustomColors.black),
                ),
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
