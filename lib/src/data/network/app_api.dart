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

  @POST('/customer/login')
  Future<AuthResponse> login(
    @Field('email') String email,
    @Field('password') String password,
  );
  @POST('/customer/register')
  Future<AuthResponse> register(
    @Field('user_name') String userName,
    @Field('email') String email,
    @Field('password') String password,
    @Field('mobile_number') String mobileNumber,
  );
}
