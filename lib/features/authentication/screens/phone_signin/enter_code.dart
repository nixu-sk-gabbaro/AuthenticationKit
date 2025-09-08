import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/image_strings.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter Code",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 5),

            Text(
              "We have sent an SMS with a code to your phone number.",
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 24),

            // OTP Input Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 45,
                  child: TextField(
                    autofocus: index == 0,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 5) {
                        FocusScope.of(context).nextFocus();
                      } else if (value.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                );
              }),
            ),

            const SizedBox(height: 32),

            // Verify Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(CustomColors.black),
                ),
                child: const Text("Verify"),
              ),
            ),

            const SizedBox(height: 16),

            // Resend Code
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn’t receive the code?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(onPressed: () {}, child: const Text("Resend")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
