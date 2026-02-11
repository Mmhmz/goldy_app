import 'package:flutter/material.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_strings.dart';
import 'package:goldy_app/core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () {},
            text: AppStrings.gold,
            color: AppColors.goldColor,
          ),
          SizedBox(height: 15),
          CustomButton(
            onPressed: () {},
            text: AppStrings.silver,
            color: AppColors.silverColor,
          ),
        ],
      ),
    );
  }
}
