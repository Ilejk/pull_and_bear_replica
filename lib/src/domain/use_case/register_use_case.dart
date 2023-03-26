import 'package:pull_and_bear_replica/src/data/network/failure_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:pull_and_bear_replica/src/data/requests/requests.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/domain/repository/repository.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/base_use_case.dart';

class RegisterUseCase implements BaseUseCase<RegisterUseCaseInput, Auth> {
  final Repository _repository;
  RegisterUseCase(this._repository);

  @override
  Future<Either<Failure, Auth>> execute(RegisterUseCaseInput input) async {
    return await _repository.register(
      RegisterRequest(
        userName: input.userName,
        email: input.email,
        password: input.password,
        mobileNumber: input.mobileNumber,
      ),
    );
  }
}

class RegisterUseCaseInput {
  String userName;
  String email;
  String password;
  String mobileNumber;

  RegisterUseCaseInput({
    required this.userName,
    required this.email,
    required this.password,
    required this.mobileNumber,
  });
}
