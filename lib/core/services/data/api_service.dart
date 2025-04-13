import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:wisp_wiz/core/utils/exceptions/dio_exceptions.dart';
import 'package:wisp_wiz/core/utils/exceptions/exceptions.dart';

class ApiService {
  final Dio _dio;
  ApiService({required Dio dio}) : _dio = dio;

  void updateHeaders(Map<String, String> headers) {
    _dio.options.headers.addAll(headers);
  }

  Future<dynamic> post(final dynamic data, final String url) async {
    try {
      final response = await _dio.post(url, data: data);
      _handleResponse(response);
    } catch (e) {
      _handleException(e);
    }
  }

  Future<dynamic> get(final String url) async {
    try {
      final response = await _dio.get(url);
      _handleResponse(response);
    } catch (e) {
      _handleException(e);
    }
  }

  void _handleException(Object e) {
    switch (e.runtimeType) {
      case DioException _:
        // Handle DioException by converting it into ADioException
        throw ADioException.fromDioError(e as DioException);

      default:
        // Handle all other generic exceptions
        throw AExceptions('An unexpected error occurred: ${e.toString()}');
    }
  }

  // Handle the HTTP response
  Map<String, dynamic> _handleResponse(Response<dynamic> response) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.data);
    } else {
      throw AExceptions.fromCode(response.data["ErrorCode"]);
    }
  }
}
