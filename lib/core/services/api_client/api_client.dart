import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:taslak/core/const/api_url.dart';
import 'package:taslak/core/models/request/login_model.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: ApiUrl.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  @POST(ApiUrl.login)
  Future<String> auth(@Body() LoginModel loginModel);
}
