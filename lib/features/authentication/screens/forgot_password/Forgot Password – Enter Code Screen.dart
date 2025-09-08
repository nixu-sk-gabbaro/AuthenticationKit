import 'package:flutter/material.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'reset_password_screen.dart';

class ForgotPasswordCodeScreen extends StatelessWidget {
  const ForgotPasswordCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController otpController = TextEditingController();

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
              controller: otpController,
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
                  if (otpController.text.length == 6) {
                    // ✅ Navigate to Reset Password Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPasswordScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please enter a valid 6-digit code"),
                      ),
                    );
                  }
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
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("New code sent!")),
                  );
                },
                child: const Text("Resend Code"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
