import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/home_two_screen/models/home_two_model.dart';

/// A provider class for the HomeTwoScreen.
///
/// This provider manages the state of the HomeTwoScreen, including the
/// current homeTwoModelObj
class HomeTwoProvider extends ChangeNotifier {
  TextEditingController exploreController = TextEditingController();

  HomeTwoModel homeTwoModelObj = HomeTwoModel();

  @override
  void dispose() {
    super.dispose();
    exploreController.dispose();
  }
}
