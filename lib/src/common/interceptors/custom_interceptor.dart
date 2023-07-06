import 'package:dio/dio.dart';

class CustomInterceptor extends Interceptor {
  // 중간에 체크용
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // 키 체크
    options.headers['X-Naver-Client-id'] = 'Jr2T6CFrSpqJJy41uJF2';
    options.headers['X-Naver-Client-Secret'] = '8M1INtpvOX';
    super.onRequest(options, handler);
  }
}
