import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/libray_page/models/libray_model.dart';

/// A provider class for the LibrayPage.
///
/// This provider manages the state of the LibrayPage, including the
/// current librayModelObj

// ignore_for_file: must_be_immutable
class LibrayProvider extends ChangeNotifier {
  LibrayModel librayModelObj = LibrayModel();

  @override
  void dispose() {
    super.dispose();
  }
}
