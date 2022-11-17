import 'package:flutter/material.dart';
import 'package:taslak/core/const/app_text.dart';

class ErrorAlertDialog {
  BuildContext context;
  ErrorAlertDialog(this.context);

  bool _isShowing = false;

  Future<void> showMyDialog({required String message}) async {
    _isShowing = true;
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  const Icon(
                    Icons.cancel_outlined,
                    color: Colors.red,
                  ),
                  Text(message)
                ],
              ),
              TextButton(onPressed: closeDialog, child: const Text(AppText.ok))
            ],
          ),
        );
      },
    );
  }

  void closeDialog() {
    if (_isShowing) {
      _isShowing = false;
      Navigator.of(context, rootNavigator: true).pop();
    }
  }
}
