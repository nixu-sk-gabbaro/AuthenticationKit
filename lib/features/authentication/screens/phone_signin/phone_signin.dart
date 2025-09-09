import 'package:authentication_kit/features/authentication/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/image_strings.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginWithPhoneScreen extends StatefulWidget {
  const LoginWithPhoneScreen({super.key});

  @override
  State<LoginWithPhoneScreen> createState() => _LoginWithPhoneScreenState();
}

class _LoginWithPhoneScreenState extends State<LoginWithPhoneScreen> {
  final List<String> lst = ["Low", "medium", "High", "Extreme"];
  final TextEditingController phoneController = TextEditingController();

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
              Text("Log in", style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              const Text(
                "Please continue with your country code and enter your phone number",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              DropdownButtonFormField<String>(
                padding: EdgeInsets.only(left: 21),
                decoration: InputDecoration(prefix: Flag(Flags.pakistan)),
                items: lst.map<DropdownMenuItem<String>>((String val) {
                  return DropdownMenuItem<String>(value: val, child: Text(val));
                }).toList(),
                onChanged: (value) {},
              ),
              SizedBox(height: CustomSizes.spaceBtwItems),
              TextField(
                controller: phoneController,
                autofocus: true,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixText: "+92 ",
                  hintText: "Enter your phone number",
                  hintStyle: TextStyle(color: CustomColors.textSecondary),
                ),
              ),

              SizedBox(height: CustomSizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => OtpVerificationScreen()),

                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(CustomColors.black),
                  ),
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
