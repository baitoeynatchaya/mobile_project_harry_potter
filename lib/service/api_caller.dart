import 'package:dio/dio.dart';

class ApiCaller{
  static final _dio = Dio(BaseOptions(responseType: ResponseType.plain));
  static const basePath = "http://localhost:3000";
  Future<String> get(String endpoint, {Map<String, dynamic>? params}) async {
    try {
      final response = await _dio.get('$basePath/$endpoint', queryParameters: params);
      return response.data.toString();
    } catch (e) {
      // TODO:
      print(e);
      rethrow;
    }
  }

  Future<String> post(String endpoint,
      {required Map<String, dynamic>? params}) async {
    try {
      final response = await _dio.post('$basePath/$endpoint', data: params);
      return response.data.toString();
    } catch (e) {
      rethrow;
    }
  }
}