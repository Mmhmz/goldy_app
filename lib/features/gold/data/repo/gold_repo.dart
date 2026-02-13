import 'package:dartz/dartz.dart';
import 'package:goldy_app/core/networking/api_constants.dart';
import 'package:goldy_app/core/networking/dio_helper.dart';
import 'package:goldy_app/features/gold/data/models/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGold() async {
    // 'dartz' package => Either<Failure, Success>
    try {
      final res = await DioHelper.getData(endPoint: ApiConstants.goldEndPoint);
      return Right(GoldModel.fromJson(res.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
