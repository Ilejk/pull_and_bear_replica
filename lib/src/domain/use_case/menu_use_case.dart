import 'package:dartz/dartz.dart';
import 'package:pull_and_bear_replica/src/data/network/failure_handler.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/domain/repository/repository.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/base_use_case.dart';

class MenuUseCase extends BaseUseCase<void, MenuObject> {
  final Repository _repository;
  MenuUseCase(this._repository);

  @override
  Future<Either<Failure, MenuObject>> execute(void input) async {
    return await _repository.getMenu();
  }
}
