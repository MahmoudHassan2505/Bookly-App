//this class include all failure
//create a class for each error and extend the abstract class
import 'package:dio/dio.dart';

abstract class Failure {
  final String errMesasge;
  const Failure(this.errMesasge);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMesasge);

  factory ServerFailure.fromDioException(DioException dio) {
    switch (dio.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout  with API Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout  with API Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recive Timeout  with API Server');
      case DioExceptionType.badResponse:
        return ServerFailure(dio.response!.data['error']['message']);
      case DioExceptionType.cancel:
        return ServerFailure('Connection Canceled  with API Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error  with API Server');
      case DioExceptionType.unknown:
        if (dio.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unkown Error, Try again Later');
      default:
        return ServerFailure("Unkown");
    }
  }
}
