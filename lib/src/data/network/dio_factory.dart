import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:pull_and_bear_replica/src/app/constants.dart';

const String applicationJson = 'application/json';
const String contentType = 'content-type';
const String accept = 'accept';
const String authorization = 'authorization';

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    Duration timeout = const Duration(minutes: 1);

    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: Constants.token,
    };

    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      connectTimeout: timeout,
      receiveTimeout: timeout,
      headers: headers,
    );

    if (kReleaseMode) {
      print('realse mode no logs');
    } else {
      dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseHeader: true,
          responseBody: true,
        ),
      );
    }
    return dio;
  }
}
