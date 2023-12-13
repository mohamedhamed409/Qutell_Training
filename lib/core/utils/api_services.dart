import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://insrvs.com';
  final Dio _dio;
  ApiServices(this._dio);
  Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    var response = await _dio.post('$_baseUrl$endPoint');
    return response.data;
  }
}
