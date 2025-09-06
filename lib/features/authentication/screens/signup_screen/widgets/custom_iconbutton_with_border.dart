import 'package:flutter/material.dart';

class CustomIconButtonwithBorder extends StatelessWidget {
  const CustomIconButtonwithBorder({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon)),
    );
  }
}
