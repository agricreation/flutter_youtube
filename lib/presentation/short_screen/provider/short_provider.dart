import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/short_screen/models/short_model.dart';

/// A provider class for the ShortScreen.
///
/// This provider manages the state of the ShortScreen, including the
/// current shortModelObj

// ignore_for_file: must_be_immutable
class ShortProvider extends ChangeNotifier {
  ShortModel shortModelObj = ShortModel();

  @override
  void dispose() {
    super.dispose();
  }
}
