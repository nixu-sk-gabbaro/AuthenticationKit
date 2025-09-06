import 'package:authentication_kit/utils/constants/colors.dart';
import 'package:authentication_kit/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomAuthButtonWithIconsAndText extends StatelessWidget {
  const CustomAuthButtonWithIconsAndText({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace / 2),
        height: 40,
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: BorderRadius.circular(CustomSizes.borderRadiusLg * 2),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.black, size: CustomSizes.iconMd),
            SizedBox(width: CustomSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
