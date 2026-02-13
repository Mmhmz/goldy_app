import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy_app/features/gold/data/repo/gold_repo.dart';
import 'package:goldy_app/features/gold/presentation/cubit/gold_states.dart';

class GoldCubit extends Cubit<GoldStates> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldInitialState());

  Future<void> getGold() async {
    emit(GoldLoadingState());
    final res = await goldRepo.getGold();
    // 'dart' package => fold(do this if Failure, do this if Success)
    res.fold(
      (error) {
        emit(GoldErrorState(errorMsg: error));
      },
      (GoldModel) {
        emit(GoldSuccessState(goldModel: GoldModel));
      },
    );
  }
}
