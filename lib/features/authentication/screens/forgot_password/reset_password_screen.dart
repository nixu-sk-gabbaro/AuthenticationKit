import 'package:flutter/material.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController newPasswordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

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
              controller: newPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "New Password",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Confirm Password Field
            TextField(
              controller: confirmPasswordController,
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
                  String newPass = newPasswordController.text.trim();
                  String confirmPass = confirmPasswordController.text.trim();

                  if (newPass.isEmpty || confirmPass.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("All fields are required")),
                    );
                  } else if (newPass != confirmPass) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Passwords do not match")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Password reset successful!"),
                      ),
                    );

                    // Navigate back to Login Screen
                    Navigator.popUntil(context, (route) => route.isFirst);
                  }
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
