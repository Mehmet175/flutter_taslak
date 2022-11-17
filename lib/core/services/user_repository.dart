import 'package:get_it/get_it.dart';
import 'package:taslak/core/models/request/login_model.dart';
import 'package:taslak/core/services/api_client/api_client.dart';

abstract class IUserRepository {
  Future<String?> auth(LoginModel model);
}

class UserRepository implements IUserRepository {
  final ApiClient _apiClient = GetIt.instance<ApiClient>();

  @override
  Future<String?> auth(LoginModel model) async {
    try {
      final String token = await _apiClient.auth(model);
      return token;
    } catch (e) {
      return null;
    }
  }
}
