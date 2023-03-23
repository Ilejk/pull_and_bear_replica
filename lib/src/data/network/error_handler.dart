import 'package:dio/dio.dart';
import 'package:pull_and_bear_replica/src/data/network/failure_handler.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorised,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  unknown,
}

class ErrorHandler implements Exception {
  late Failure failure;
  ErrorHandler.handle(dynamic error) {
    if (error is DioError) {
      failure = _handleError(error);
    } else {
      failure = DataSource.unknown.getFailure();
    }
  }
}

Failure _handleError(DioError error) {
  switch (error.type) {
    case DioErrorType.connectionTimeout:
      return DataSource.connectTimeout.getFailure();
    case DioErrorType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioErrorType.receiveTimeout:
      return DataSource.receiveTimeout.getFailure();
    case DioErrorType.badResponse:
      switch (error.response!.statusCode) {
        case ResponseCode.badRequest:
          return DataSource.badRequest.getFailure();
        case ResponseCode.forbidden:
          return DataSource.forbidden.getFailure();
        case ResponseCode.unauthorised:
          return DataSource.unauthorised.getFailure();
        case ResponseCode.notFound:
          return DataSource.notFound.getFailure();
        case ResponseCode.internalServerError:
          return DataSource.internalServerError.getFailure();
        default:
          return DataSource.unknown.getFailure();
      }
    case DioErrorType.cancel:
      return DataSource.cancel.getFailure();
    case DioErrorType.unknown:
      return DataSource.unknown.getFailure();
    default:
      return DataSource.unknown.getFailure();
  }
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.badRequest:
        return Failure(
            code: ResponseCode.badRequest, message: ResponseMessage.badRequest);
      case DataSource.forbidden:
        return Failure(
            code: ResponseCode.forbidden, message: ResponseMessage.forbidden);

      case DataSource.unauthorised:
        return Failure(
            code: ResponseCode.unauthorised,
            message: ResponseMessage.unauthorised);

      case DataSource.notFound:
        return Failure(
            code: ResponseCode.notFound, message: ResponseMessage.notFound);

      case DataSource.internalServerError:
        return Failure(
            code: ResponseCode.internalServerError,
            message: ResponseMessage.internalServerError);

      case DataSource.connectTimeout:
        return Failure(
            code: ResponseCode.connectTimeout,
            message: ResponseMessage.connectTimeout);

      case DataSource.cancel:
        return Failure(
            code: ResponseCode.cancel, message: ResponseMessage.cancel);

      case DataSource.receiveTimeout:
        return Failure(
            code: ResponseCode.receiveTimeout,
            message: ResponseMessage.receiveTimeout);

      case DataSource.sendTimeout:
        return Failure(
            code: ResponseCode.sendTimeout,
            message: ResponseMessage.sendTimeout);

      case DataSource.cacheError:
        return Failure(
            code: ResponseCode.cacheError, message: ResponseMessage.cacheError);

      case DataSource.noInternetConnection:
        return Failure(
            code: ResponseCode.noInternetConnection,
            message: ResponseMessage.noInternetConnection);
      case DataSource.unknown:
        return Failure(
            code: ResponseCode.unknown, message: ResponseMessage.unknown);
      default:
        return Failure(
            code: ResponseCode.unknown, message: ResponseMessage.unknown);
    }
  }
}

class ResponseCode {
  //api status codes
  static const int success = 200;
  static const int noContent = 201;
  static const int badRequest = 400;
  static const int forbidden = 403;
  static const int unauthorised = 401;
  static const int notFound = 404;
  static const int internalServerError = 500;
  //local status codes
  static const int unknown = -1;
  static const int connectTimeout = -2;
  static const int cancel = -3;
  static const int receiveTimeout = -4;
  static const int sendTimeout = -5;
  static const int cacheError = -6;
  static const int noInternetConnection = -7;
}

class ResponseMessage {
  //api status codes
  static const String success =
      StringsErrorManager.success; // success with data
  static const String noContent =
      StringsErrorManager.noContent; // success with no content
  static const String badRequest =
      StringsErrorManager.badRequestError; // failure, api rejected our request
  static const String forbidden =
      StringsErrorManager.forbiddenError; // failure,  api rejected our request
  static const String unauthorised =
      StringsErrorManager.unauthorizedError; // failure, user is not authorised
  static const String notFound = StringsErrorManager
      .notFoundError; // failure, API url is not correct and not found in api side.
  static const String internalServerError = StringsErrorManager
      .internalServerError; // failure, a crash happened in API side.
  //local status codes
  static const String unknown =
      StringsErrorManager.defaultError; // unknown error happened
  static const String connectTimeout =
      StringsErrorManager.timeoutError; // issue in connectivity
  static const String cancel =
      StringsErrorManager.defaultError; // API request was cancelled
  static const String receiveTimeout =
      StringsErrorManager.timeoutError; //  issue in connectivity
  static const String sendTimeout =
      StringsErrorManager.timeoutError; //  issue in connectivity
  static const String cacheError = StringsErrorManager
      .defaultError; //  issue in getting data from local data source (cache)
  static const String noInternetConnection =
      StringsErrorManager.noInternetError; // issue in connectivity
}

class ApiInternalStatus {
  static const int success = 0;
  static const int failure = 1;
}
