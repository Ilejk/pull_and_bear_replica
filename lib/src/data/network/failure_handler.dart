import 'package:pull_and_bear_replica/src/data/network/error_handler.dart';

class Failure {
  int code;
  String message;
  Failure({
    required this.code,
    required this.message,
  });
}

class DefaultFailure extends Failure {
  DefaultFailure()
      : super(code: ResponseCode.unknown, message: ResponseMessage.unknown);
}
