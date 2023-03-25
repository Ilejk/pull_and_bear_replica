import 'package:pull_and_bear_replica/src/data/network/app_api.dart';
import 'package:pull_and_bear_replica/src/data/requests/requests.dart';
import 'package:pull_and_bear_replica/src/data/responses/responses.dart';

abstract class RemoteDataSource {
  Future<HomeResponse> getHome();
  Future<AuthResponse> login(LoginRequest loginRequest);
}

class RemoteDataSourceClassImplementer implements RemoteDataSource {
  final AppServiceClient _appServiceClient;
  RemoteDataSourceClassImplementer(this._appServiceClient);

  @override
  Future<HomeResponse> getHome() async {
    return await _appServiceClient.getHome();
  }

  @override
  Future<AuthResponse> login(LoginRequest loginRequest) async {
    return await _appServiceClient.login(
      loginRequest.email,
      loginRequest.password,
    );
  }
}
