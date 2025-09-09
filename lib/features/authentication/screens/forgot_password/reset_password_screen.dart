import 'package:authentication_kit/features/authentication/screens/forgot_password/password_changed_screen.dart';
import 'package:authentication_kit/features/authentication/screens/signin_screen/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reset Password"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              "Create New Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Text(
              "Your new password must be different from previous used passwords.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 30),

            // New Password Field
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "New Password",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Confirm Password Field
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            // Reset Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => PasswordChangedScreen());
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(CustomColors.black),
                ),
                child: const Text("Reset Password"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
