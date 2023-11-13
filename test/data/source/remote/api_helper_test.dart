import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:publiccompanies/data/source/remote/api_helper.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'api_helper_test.mocks.dart';

@GenerateMocks([HttpClientAdapter])
void main() {
  final adapter = MockHttpClientAdapter();
  final testDio = Dio();
  late ApiHelper apiHelper;

  setUp(() {
    testDio.httpClientAdapter = adapter;
    apiHelper = ApiHelper.test(testDio);
  });

  group('Get method', () {
    test('can get', () async {
      final expectRresponse = {"data": "123"};
      final httpResponse = ResponseBody.fromString(
        jsonEncode(expectRresponse),
        200,
      );

      when(adapter.fetch(any, any, any)).thenAnswer((_) async => httpResponse);

      final response = await apiHelper.get('any');

      expect(jsonDecode(response), expectRresponse);
    });

    test('get with SocketException', () async {
      when(adapter.fetch(any, any, any))
          .thenAnswer((_) => throw const SocketException('any'));

      expect(() => apiHelper.get('any'), throwsA(isA<Exception>()));
    });

    test('get with other than 200 status code', () async {
      final httpResponse = ResponseBody.fromString(
        jsonEncode({}),
        404,
      );

      when(adapter.fetch(any, any, any)).thenAnswer((_) async => httpResponse);

      expect(() => apiHelper.get('any'), throwsA(isA<Exception>()));
    });
  });
}
