import 'package:get_it/get_it.dart';
import 'package:taslak/core/services/user_repository.dart';
import 'package:taslak/features/auth/view_model/login_view_model.dart';

GetIt getIt = GetIt.instance;

void setupLocators(){
  // Repositories
  getIt.registerLazySingleton<IUserRepository>(() => UserRepository());

  // ViewModel
  getIt.registerFactory(() => LoginViewModel());

  // Token
  getIt.registerSingleton<String>("");
}
