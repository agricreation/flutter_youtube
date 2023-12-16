import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/view_tab_container_screen/models/view_tab_container_model.dart';

/// A provider class for the ViewTabContainerScreen.
///
/// This provider manages the state of the ViewTabContainerScreen, including the
/// current viewTabContainerModelObj
class ViewTabContainerProvider extends ChangeNotifier {
  ViewTabContainerModel viewTabContainerModelObj = ViewTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
