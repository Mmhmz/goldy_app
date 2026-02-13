import 'package:dartz/dartz.dart';
import 'package:goldy_app/core/networking/api_constants.dart';
import 'package:goldy_app/core/networking/dio_helper.dart';
import 'package:goldy_app/features/silver/data/models/silver_model.dart';

class SilverRepo {
  Future<Either<String, SilverModel>> getSilver() async {
    // 'dartz' package => Either<Failure, Success>
    try {
      final res = await DioHelper.getData(
        endPoint: ApiConstants.silverEndPoint,
      );
      return Right(SilverModel.fromJson(res.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
