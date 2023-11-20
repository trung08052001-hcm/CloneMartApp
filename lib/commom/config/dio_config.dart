import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class DioConfig {
  final String baseUrl;

  DioConfig({required this.baseUrl});
}

class ChatApiHelper {
  late Dio _dio;
  ChatApiHelper() {
    _dio = getIt<Dio>();
  }

  Future<Map<String, dynamic>> sendMessage(String text) async {
    try {
      final response = await _dio.post(
        '/webhooks/rest/webhook',
        data: {'message': text},
      );

      if (response.data != null) {
        final result = response.data[0]['text'];
        return {'success': true, 'result': result};
      }
    } catch (error) {
      print('Error: $error');
      return {'success': false, 'error': error.toString()};
    }

    return {'success': false, 'error': 'Unknown error'};
  }
}
