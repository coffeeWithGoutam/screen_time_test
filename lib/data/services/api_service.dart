import 'dart:developer';
import 'package:dio/dio.dart';

import '../../core/errors/failure.dart';
import '../../core/constants/api_constants.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio) {
    _dio.options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      // connectTimeout: Duration(seconds: 30),
      // receiveTimeout: Duration(seconds: 30),
    );
  }

  // Get Method
  Future<Response> getRequest({
    required String endPoint,
    Map<String, dynamic>? parameters,
    Map<String, dynamic>? headers,
    String token = "",
  }) async {
    try {
      Map<String, String> defaultHeaders = {};
      if (token.isNotEmpty) {
        defaultHeaders["Authorization"] = "Bearer $token";
      }
      if (headers != null) {
        defaultHeaders.addAll(
            headers.map((key, value) => MapEntry(key, value.toString())));
      }
      _dio.options.headers = defaultHeaders;
      log('GET Request: $endPoint');
      log('Parameters: ${parameters?.toString() ?? "No Parameters"}');
      final response = await _dio.get(endPoint, queryParameters: parameters);
      log('Response: ${response.data.toString()}');
      return response;
    } on DioException catch (error) {
      log('Dio Error: ${error.message}');
      log('Response Error: ${error.response?.data}');
      throw Failure.fromDioError(error);
    } catch (error) {
      log('Unexpected Error: $error');
      rethrow;
    }
  }

  // Post Method
  Future<Response> postRequest({
    required String endPoint,
    Map<String, dynamic>? parameters,
    Map<String, dynamic>? headers,
    String token = "",
  }) async {
    try {
      Map<String, String> defaultHeaders = {};
      if (token.isNotEmpty) {
        defaultHeaders["Authorization"] = "Bearer $token";
      }
      if (headers != null) {
        defaultHeaders.addAll(
            headers.map((key, value) => MapEntry(key, value.toString())));
      }
      _dio.options.headers = defaultHeaders;
      log('POST Request: $endPoint');
      log('Parameters: ${parameters?.toString() ?? "No Parameters"}');
      final response = await _dio.post(endPoint, data: parameters);
      log('Response: ${response.data.toString()}');
      return response;
    } on DioException catch (error) {
      log('Dio Error: ${error.message}');
      log('Response Error: ${error.response?.data}');
      throw Failure.fromDioError(error);
    } catch (error) {
      log('Unexpected Error: $error');
      rethrow;
    }
  }

  // Patch Method
  Future<Response> patchRequest({
    required String endPoint,
    Map<String, dynamic>? parameters,
    Map<String, dynamic>? headers,
    String token = "",
  }) async {
    try {
      Map<String, String> defaultHeaders = {};
      if (token.isNotEmpty) {
        defaultHeaders["Authorization"] = "Bearer $token";
      }
      if (headers != null) {
        defaultHeaders.addAll(
            headers.map((key, value) => MapEntry(key, value.toString())));
      }
      _dio.options.headers = defaultHeaders;
      log('POST Request: $endPoint');
      log('Parameters: ${parameters?.toString() ?? "No Parameters"}');
      final response = await _dio.patch(endPoint, data: parameters);
      log('Response: ${response.data.toString()}');
      return response;
    } on DioException catch (error) {
      log('Dio Error: ${error.message}');
      log('Response Error: ${error.response?.data}');
      throw Failure.fromDioError(error);
    } catch (error) {
      log('Unexpected Error: $error');
      rethrow;
    }
  }
}
