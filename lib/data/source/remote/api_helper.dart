import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:publiccompanies/utils/common.dart';

String _baseUrl = 'https://openapi.twse.com.tw/';

class ApiHelper {
  late final Dio _dio;

  ApiHelper() {
    final options = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    );

    _dio = Dio(options);
    if (isDebug()) {
      _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }
  }

  ApiHelper.test(Dio testDio) {
    _dio = testDio;
  }

  Future<dynamic> get(
    String path, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    dynamic responseJson;
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
      );
      responseJson = _returnResponse(response);
    } on SocketException {
      throw Exception('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(Response response) async {
    switch (response.statusCode) {
      case 200:
        return response.data;
      default:
        throw Exception(
            'Error occured while Communication with Server: \nstatusCode: ${response.statusCode} \nresponseBody: ${response.statusMessage}');
    }
  }
}
