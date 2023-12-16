import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/view_one_screen/models/view_one_model.dart';

/// A provider class for the ViewOneScreen.
///
/// This provider manages the state of the ViewOneScreen, including the
/// current viewOneModelObj

// ignore_for_file: must_be_immutable
class ViewOneProvider extends ChangeNotifier {
  ViewOneModel viewOneModelObj = ViewOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
