import 'package:flutter/material.dart';
import 'package:goldy_app/core/constants/app_colors.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
