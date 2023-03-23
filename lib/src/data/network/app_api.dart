import 'package:dio/dio.dart';
import 'package:pull_and_bear_replica/src/app/constants.dart';
import 'package:pull_and_bear_replica/src/data/responses/responses.dart';
import 'package:retrofit/retrofit.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET('/home')
  Future<HomeResponse> getHome();
}
