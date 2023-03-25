import 'package:pull_and_bear_replica/src/data/network/failure_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:pull_and_bear_replica/src/data/requests/requests.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/domain/repository/repository.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/base_use_case.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Auth> {
  final Repository _repository;
  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, Auth>> execute(LoginUseCaseInput input) async {
    return await _repository.login(
      LoginRequest(
        email: input.email,
        password: input.password,
      ),
    );
  }
}

class LoginUseCaseInput {
  String email;
  String password;
  LoginUseCaseInput(this.email, this.password);
}
