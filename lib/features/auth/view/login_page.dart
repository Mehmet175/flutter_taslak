import 'package:flutter/material.dart';
import 'package:taslak/core/base/base_view.dart';
import 'package:taslak/core/const/app_dimen.dart';
import 'package:taslak/core/const/app_text.dart';
import 'package:taslak/features/auth/view_model/login_view_model.dart';
import 'package:taslak/features/auth/widgets/custom_text_form_field_widget.dart';
import 'package:taslak/features/auth/widgets/login_button_widget.dart';

//ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _tecUserName = TextEditingController();
  final _tecPassword = TextEditingController();

  late LoginViewModel _viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      onBuilder: (context, viewModel) {
        return Scaffold(
          body: _body(),
        );
      },
    );
  }

  Widget _body() => Container(
        margin: const EdgeInsets.symmetric(horizontal: AppDimen.dimenL),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                hintText: AppText.userName,
                tec: _tecUserName,
              ),
              const SizedBox(
                height: AppDimen.dimenL,
              ),
              CustomTextFormField(
                hintText: AppText.password,
                tec: _tecPassword,
              ),
              const SizedBox(
                height: AppDimen.dimenL,
              ),
              LoginButtonWidget(
                text: AppText.login,
                onTab: _onTabLogin,
              ),
            ],
          ),
        ),
      );

  void _onTabLogin() {

  }
}
