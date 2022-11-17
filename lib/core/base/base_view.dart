import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'package:taslak/core/base/base_view_model.dart';
import 'package:taslak/core/helper/mixins/state_mixin_wait.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  VoidCallback? initState;
  VoidCallback? dispose;
  Widget Function(BuildContext context, T viewModel) onBuilder;

  BaseView({Key? key, required this.onBuilder, this.initState, this.dispose})
      : super(key: key);

  @override
  State<BaseView<T>> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>>
    with StateMixinWait {
  final _viewModel = GetIt.instance<T>();

  @override
  void initState() {
    super.initState();
    waitForScreen(() {
      _viewModel.onInitData();
    });
    widget.initState?.call();
  }

  @override
  void dispose() {
    widget.dispose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _viewModel,
      child: widget.onBuilder(context, _viewModel),
    );
  }
}
