import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_images.dart';
import 'package:goldy_app/features/gold/presentation/screens/widgets/custom_text.dart';
import 'package:goldy_app/features/silver/data/repo/silver_repo.dart';
import 'package:goldy_app/features/silver/presentation/cubit/silver_cubit.dart';
import 'package:goldy_app/features/silver/presentation/cubit/silver_states.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilver(),

      child: Scaffold(
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
        body: BlocBuilder<SilverCubit, SilverStates>(
          builder: (context, state) {
            if (state is SilverLoadingState) {
              return const Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            } else if (state is SilverErrorState) {
              return Center(
                child: CustomText(
                  text: 'Something wrong',
                  color: AppColors.silverColor,
                ),
              );
            } else if (state is SilverSuccessState) {
              return Column(
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
                      CustomText(
                        text: state.silverModel.price.toString(),
                        color: AppColors.silverColor,
                      ),
                      CustomText(text: ' EGP', color: AppColors.silverColor),
                    ],
                  ),
                ],
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
