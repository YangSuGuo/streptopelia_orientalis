import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/helper/dio_interceptor.dart';
import 'package:streptopelia_orientalis/helper/logger_interceptor.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(Ref ref) {

  final dio = Dio(
    BaseOptions(
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        sendTimeout: const Duration(seconds: 20),
        headers: {
          "user-agent": "YangSuGuo/Streptopelia_orientalis 1.0",
          "content-type": "application/json",
        }
    )
  )
  ..interceptors.add(DioInterceptor())
  ..interceptors.add(LoggerInterceptor());

  return dio;
}
