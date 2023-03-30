import 'package:dartz/dartz.dart';
import 'package:pull_and_bear_replica/src/data/network/failure_handler.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/domain/repository/repository.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/base_use_case.dart';

class MenuNewCatUseCase extends BaseUseCase<void, MenuNewObject> {
  final Repository _repository;
  MenuNewCatUseCase(this._repository);

  @override
  Future<Either<Failure, MenuNewObject>> execute(void input) async {
    return await _repository.getMenuNew();
  }
}
