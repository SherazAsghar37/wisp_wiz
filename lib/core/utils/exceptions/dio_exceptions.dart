import 'package:dio/dio.dart';

/// A comprehensive class to store and manage all information related to Dio exceptions.
class ADioException implements Exception {
  /// The Dio error type associated with the exception (e.g., connectTimeout, receiveTimeout).
  final String type;

  /// The human-readable error message.
  final String message;

  /// The HTTP status code, if applicable (e.g., 404, 500).
  final int? statusCode;

  /// The error data returned by the server, if any.
  final dynamic errorData;

  /// The endpoint URL that caused the exception.
  final String? requestUrl;

  /// The stack trace for debugging purposes.
  final StackTrace? stackTrace;

  /// Constructor to initialize the exception with all its details.
  ADioException({
    required this.type,
    required this.message,
    this.statusCode,
    this.errorData,
    this.requestUrl,
    this.stackTrace,
  });

  /// Factory method to create a ADioException from a DioError.
  factory ADioException.fromDioError(DioException dioError) {
    return ADioException(
      type: dioError.type.toString().split('.').last, // Extract Dio error type
      message: _mapErrorMessage(dioError),
      statusCode: dioError.response?.statusCode,
      errorData: dioError.response?.data,
      requestUrl: dioError.requestOptions.path,
      stackTrace: dioError.stackTrace,
    );
  }

  /// Maps DioError to a human-readable error message.
  static String _mapErrorMessage(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        return 'The request was cancelled. Please try again.';
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout. Please check your internet connection.';
      case DioExceptionType.sendTimeout:
        return 'The request timed out while sending data. Please try again.';
      case DioExceptionType.receiveTimeout:
        return 'The request timed out while waiting for a response.';
      case DioExceptionType.badCertificate:
        return 'The request was blocked due to a bad SSL certificate. Please check the server\'s SSL configuration.';
      case DioExceptionType.connectionError:
        return 'A connection error occurred. Please check your network and try again.';
      case DioExceptionType.badResponse:
        final statusCode = dioError.response?.statusCode;
        if (statusCode == 400) {
          return 'Bad request. Please check your input.';
        } else if (statusCode == 401) {
          return 'Unauthorized. Please log in and try again.';
        } else if (statusCode == 403) {
          return 'Forbidden. You do not have permission to access this resource.';
        } else if (statusCode == 404) {
          return 'Not found. The requested resource could not be located.';
        } else if (statusCode == 500) {
          return 'Internal server error. Please try again later.';
        } else {
          return 'Received an unexpected error. Status code: $statusCode';
        }
      case DioExceptionType.unknown:
        return 'An unexpected error occurred. Please check your network connection.';
    }
  }

  @override
  String toString() {
    return 'ADioException: {\n'
        '  type: $type,\n'
        '  message: $message,\n'
        '  statusCode: $statusCode,\n'
        '  errorData: $errorData,\n'
        '  requestUrl: $requestUrl,\n'
        '  stackTrace: $stackTrace\n'
        '}';
  }
}
