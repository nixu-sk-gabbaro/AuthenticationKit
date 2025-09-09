import 'package:authentication_kit/features/authentication/screens/forgot_password/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:get/get.dart';

class ForgotPasswordCodeScreen extends StatelessWidget {
  const ForgotPasswordCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter Code")),
      body: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              "Check your phone/email",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),

            const Text(
              "We have sent a 6-digit verification code to your registered email or phone number. Enter it below to continue.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            // OTP Input Field
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 6,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter 6-digit code",
                counterText: "", // hides counter
              ),
            ),

            const SizedBox(height: 30),

            // ✅ Continue Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const ResetPasswordScreen());
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(CustomColors.black),
                ),
                child: const Text("Continue"),
              ),
            ),

            const SizedBox(height: 20),

            // Resend Option
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Resend Code",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
