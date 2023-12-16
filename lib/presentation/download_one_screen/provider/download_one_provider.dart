import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/download_one_screen/models/download_one_model.dart';
import '../models/userprofile2_item_model.dart';

/// A provider class for the DownloadOneScreen.
///
/// This provider manages the state of the DownloadOneScreen, including the
/// current downloadOneModelObj

// ignore_for_file: must_be_immutable
class DownloadOneProvider extends ChangeNotifier {
  DownloadOneModel downloadOneModelObj = DownloadOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
