import 'package:get_it/get_it.dart';
import 'package:taslak/core/base/base_view_model.dart';
import 'package:taslak/core/models/request/login_model.dart';

import 'package:taslak/core/services/user_repository.dart';

class LoginViewModel extends BaseViewModel {
  @override
  Future<void> onInit() async {}

  final IUserRepository _userRepository = GetIt.instance<IUserRepository>();

  Future<String?> auth(LoginModel loginModel) async {
    return _userRepository.auth(loginModel);
  }
}
