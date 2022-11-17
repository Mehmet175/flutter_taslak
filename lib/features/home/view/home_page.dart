import 'package:flutter/material.dart';
import 'package:taslak/core/base/base_view.dart';
import 'package:taslak/features/home/view_model/home_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      onBuilder: (context, viewModel) {
        return const Scaffold();
      },
    );
  }
}
