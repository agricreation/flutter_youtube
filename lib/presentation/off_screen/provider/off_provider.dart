import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/off_screen/models/off_model.dart';

/// A provider class for the OffScreen.
///
/// This provider manages the state of the OffScreen, including the
/// current offModelObj
class OffProvider extends ChangeNotifier {
  OffModel offModelObj = OffModel();

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
