import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/on_screen/models/on_model.dart';

/// A provider class for the OnScreen.
///
/// This provider manages the state of the OnScreen, including the
/// current onModelObj
class OnProvider extends ChangeNotifier {
  OnModel onModelObj = OnModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
