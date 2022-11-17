import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:taslak/core/services/api_client/api_client.dart';
import 'package:taslak/core/services/user_repository.dart';
import 'package:taslak/features/auth/view_model/login_view_model.dart';
import 'package:taslak/features/home/view_model/home_view_model.dart';


GetIt getIt = GetIt.instance;


void setupLocators() {
  // Repositories
  getIt.registerLazySingleton<IUserRepository>(() => UserRepository());

  // ViewModel
  getIt.registerFactory(() => LoginViewModel());
  getIt.registerFactory(() => HomeViewModel());

  // ApiClient
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(
      Dio()
        ..interceptors.add(
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
          ),
        ),
    ),
  );
}
