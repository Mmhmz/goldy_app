import 'package:flutter/material.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_images.dart';
import 'package:goldy_app/features/gold/presentation/screens/widgets/custom_text.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Silver',
          style: TextStyle(
            color: AppColors.silverColor,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.silverImg,
            height: MediaQuery.of(context).size.width / 2.4,
          ),
          SizedBox(height: 52),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(text: '2000', color: AppColors.silverColor),
              CustomText(text: ' USD', color: AppColors.silverColor),
            ],
          ),
        ],
      ),
    );
  }
}
