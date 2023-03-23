import 'package:dartz/dartz.dart';
import 'package:pull_and_bear_replica/src/data/network/failure_handler.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';

abstract class Repository {
  Future<Either<Failure, HomeObject>> getHome();
}
