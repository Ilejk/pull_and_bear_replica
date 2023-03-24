import 'package:dartz/dartz.dart';
import 'package:pull_and_bear_replica/src/data/data_source/local_data_source.dart';
import 'package:pull_and_bear_replica/src/data/data_source/remote_data_source.dart';
import 'package:pull_and_bear_replica/src/data/mapper/mapper.dart';
import 'package:pull_and_bear_replica/src/data/network/error_handler.dart';
import 'package:pull_and_bear_replica/src/data/network/failure_handler.dart';
import 'package:pull_and_bear_replica/src/data/network/network_info.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/domain/repository/repository.dart';

class RepositoryImplementer extends Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;
  final LocalDataSource _localDataSource;
  RepositoryImplementer(
      this._remoteDataSource, this._networkInfo, this._localDataSource);

  @override
  Future<Either<Failure, HomeObject>> getHome() async {
    try {
      final reponse = await _localDataSource.getHome();
      return Right(reponse.toDomain());
    } catch (cacheError) {
      if (await _networkInfo.isConnected) {
        try {
          final reponse = await _remoteDataSource.getHome();
          if (reponse.baseResponseStatus == ApiInternalStatus.success) {
            _localDataSource.saveHomeToCache(reponse);
            return Right(reponse.toDomain());
          } else {
            return Left(
              Failure(
                code: reponse.baseResponseStatus ?? ApiInternalStatus.failure,
                message: reponse.message ??
                    reponse.message ??
                    ResponseMessage.unknown,
              ),
            );
          }
        } catch (error) {
          return Left(ErrorHandler.handle(error).failure);
        }
      } else {
        return Left(
          Failure(
            code: ResponseCode.noInternetConnection,
            message: ResponseMessage.noInternetConnection,
          ),
        );
      }
    }
  }
}
