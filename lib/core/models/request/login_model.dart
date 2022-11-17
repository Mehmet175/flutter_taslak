import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String userName;
  String password;

  LoginModel({required this.userName, required this.password});

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
