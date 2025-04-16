import 'package:dio/dio.dart';

class Failure {
  final String message;

  Failure(this.message);

  // Factory methods to handle Dio errors and provide user-friendly messages
  factory Failure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        return Failure("Connection timeout. Please try again later.");
      case DioExceptionType.connectionError:
        return Failure("No internet connection. Please check your network.");
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final message = error.response?.data['message'] ??
            "Something went wrong. Please try again.";
        if (statusCode == 400) {
          return Failure(message);
        } else if (statusCode == 401) {
          return Failure(message);
        } else {
          return Failure(message);
        }
      case DioExceptionType.unknown:
        return Failure("Error During Communication");
      case DioExceptionType.cancel:
        return Failure("Request was cancelled. Please try again.");
      default:
        return Failure("Unexpected error occurred: ${error.message}");
    }
  }

  @override
  String toString() => message;
}
