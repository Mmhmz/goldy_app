import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy_app/features/silver/data/repo/silver_repo.dart';
import 'package:goldy_app/features/silver/presentation/cubit/silver_states.dart';

class SilverCubit extends Cubit<SilverStates> {
  final SilverRepo silverRepo;
  SilverCubit(this.silverRepo) : super(SilverInitialState());

  Future<void> getSilver() async {
    emit(SilverLoadingState());
    final res = await silverRepo.getSilver();
    res.fold(
      (error) {
        emit(SilverErrorState(errorMsg: error));
      },
      (SilverModel) {
        emit(SilverSuccessState(silverModel: SilverModel));
      },
    );
  }
}
