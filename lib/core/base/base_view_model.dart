import 'package:flutter/material.dart';

abstract class BaseViewModel extends ChangeNotifier {

  bool _isLoading = true;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  String? _errorMessage;
  String? get errorMessage => _errorMessage;
  set errorMessage(String? value) {
    _errorMessage = value;
    notifyListeners();
  }

  Future<void> onInit();

  Future<void> onInitData() async{
    errorMessage = null;
    isLoading = true;
    await onInit();
    isLoading = false;
  }
}