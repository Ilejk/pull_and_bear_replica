import 'package:pull_and_bear_replica/src/data/network/failure_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/domain/repository/repository.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/base_use_case.dart';

class HomeUseCase extends BaseUseCase<void, HomeObject> {
  final Repository _repository;
  HomeUseCase(this._repository);

  @override
  Future<Either<Failure, HomeObject>> execute(void input) async {
    return await _repository.getHome();
  }
}
