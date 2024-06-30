import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:palmkindle/core/env/env.dart';
import 'package:palmkindle/core/routes/palm_routes.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          printTime: true,
          errorMethodCount: 5,
        ),
      );

  @singleton
  PalmRoutes get appRouter => PalmRoutes();

  @Named('defaultDio')
  @lazySingleton
  Dio dio(Env env) {
    Dio dio = Dio();
    BaseOptions options = BaseOptions(
      connectTimeout: const Duration(seconds: 12),
      receiveTimeout: const Duration(seconds: 12),
      sendTimeout: const Duration(seconds: 6),
      headers: null,
      baseUrl: env.baseUrl,
    );
    dio.options = options;

    return dio;
  }

  @Named('textDio')
  @lazySingleton
  Dio textDio() {
    Dio dio = Dio();
    BaseOptions options = BaseOptions(
      connectTimeout: const Duration(seconds: 12),
      receiveTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 6),
      headers: null,
    );
    dio.options = options;

    return dio;
  }
}
