import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_images.dart';
import 'package:goldy_app/features/gold/data/repo/gold_repo.dart';
import 'package:goldy_app/features/gold/presentation/cubit/gold_cubit.dart';
import 'package:goldy_app/features/gold/presentation/cubit/gold_states.dart';
import 'package:goldy_app/features/gold/presentation/screens/widgets/custom_text.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),

      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Gold',
            style: TextStyle(
              color: AppColors.goldColor,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<GoldCubit, GoldStates>(
          builder: (context, state) {
            if (state is GoldLoadingState) {
              return const Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            } else if (state is GoldErrorState) {
              return Center(
                child: CustomText(
                  text: 'Something wrong',
                  color: AppColors.goldColor,
                ),
              );
            } else if (state is GoldSuccessState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.goldImg,
                    height: MediaQuery.of(context).size.width / 3,
                  ),
                  SizedBox(height: 52),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: state.goldModel.price.toString(),
                        color: AppColors.goldColor,
                      ),
                      CustomText(text: ' USD', color: AppColors.goldColor),
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
