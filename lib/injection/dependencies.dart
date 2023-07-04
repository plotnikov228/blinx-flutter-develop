import 'package:blinx/data/interceptor/auth_interceptor.dart';
import 'package:blinx/data/preferences/app_shared_preferences.dart';
import 'package:blinx/data/preferences/auth_shared_preferences.dart';
import 'package:blinx/data/preferences/user_shared_preferences.dart';
import 'package:blinx/data/services/http_client/dio_http_client.dart';
import 'package:blinx/data/services/http_client/dio_http_client_builder.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/app_flavor.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class DependencyManager {
  static Future<void> inject(AppFlavor flavor) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final streamingSharedPrefs = await StreamingSharedPreferences.instance;

    injector.registerLazySingleton<AppFlavor>(() => flavor);
    injector.registerLazySingleton<AppRouter>(() => AppRouter());
    injector.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
    injector.registerLazySingleton<StreamingSharedPreferences>(
      () => streamingSharedPrefs,
    );
    injector.registerLazySingleton<UserPreferences>(() => UserSharedPreferences(
          sharedPrefs,
          streamingSharedPrefs,
        ));
    injector.registerLazySingleton<AuthPreferences>(
        () => AuthSharedPreferences(streamingSharedPrefs));
    injector.registerLazySingleton<AppPreferences>(
        () => AppSharedPreferences(sharedPrefs));

    final dioBuilder = DioHttpClientBuilder();
    dioBuilder.setBaseUrl(flavor.baseUrl);
    dioBuilder.setSendTimeout(15000);
    dioBuilder.setConnectTimeout(15000);
    dioBuilder.setReceiveTimeout(15000);
    dioBuilder.addInterceptor(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );

    final appSharedPreferences = injector.get<AppPreferences>();

    final dioClient = dioBuilder.build();
    dioClient.dio.options.headers['Accept-Language'] =
        appSharedPreferences.getContentLanguage;
    dioClient.dio.interceptors.add(AuthInterceptor(
      httpClient: dioClient,
      authPreferences: injector(),
      userPreferences: injector(),
      refreshTokenHttpClient: DioHttpClient(Dio()),
      onTokenExpired: () {
        // TODO: Handle log out
      },
    ));

    injector.registerFactory<DioHttpClient>(() => dioClient);
    injector.registerFactory<Dio>(() => dioClient.dio);

    await configureDependencies();
  }
}
