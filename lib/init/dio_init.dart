import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../components/const/data.dart';

final Dio dio = Dio();

void dioInit() => dio.interceptors.add(CustomInterceptors());

class CustomInterceptors extends Interceptor {
  //요청을 보낼때
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('[REQ] ${options.method} ${options.uri}');
    return super.onRequest(options, handler);
  }

  //요청을 받을때
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        '[RES] [${response.requestOptions.method}] ${response.requestOptions.uri}');
    super.onResponse(response, handler);
  }

  //에러가 발생했을 때
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint(
        '[ERR] [${err.requestOptions.method}] ${err.requestOptions.uri}');
    final refreshToken = await storage.read(key: refreshTokenKey);

    if (refreshToken == null) {
      return handler.reject(err);
    }

    final isStatusCode401 = err.response?.statusCode == 401;
    final isPathReFresh = err.requestOptions.path == '/auth/login';

    if (isStatusCode401 && !isPathReFresh) {
      final Dio dio = Dio();

      try {
        final resp = await dio.post('$baseURL/auth/refresh', data: {
          'refreshToken': refreshToken,
        });

        final accessToken = resp.data['accessToken'];

        final options = err.requestOptions;

        options.headers.addAll({
          'authorization': 'Bearer $accessToken',
        });

        await storage.write(key: accessTokenKey, value: accessToken);

        final response = await dio.fetch(options);
        return handler.resolve(response);
      } on DioError catch (e) {
        return handler.reject(e);
      }
    }

    return handler.reject(err);
  }
}
