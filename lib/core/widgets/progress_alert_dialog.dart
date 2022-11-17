import 'package:flutter/material.dart';

class ProgressAlertDialog {
  BuildContext context;
  ProgressAlertDialog(this.context);

  bool _isShowing = false;

  Future<void> showMyDialog({required String message}) async {
    _isShowing = true;
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            children: <Widget>[
              const CircularProgressIndicator(),
              Text(message)
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
