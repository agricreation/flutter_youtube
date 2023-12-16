import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/view_page/models/view_model.dart';

/// A provider class for the ViewPage.
///
/// This provider manages the state of the ViewPage, including the
/// current viewModelObj

// ignore_for_file: must_be_immutable
class ViewProvider extends ChangeNotifier {
  ViewModel viewModelObj = ViewModel();

  @override
  void dispose() {
    super.dispose();
  }
}
