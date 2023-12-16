import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/download_screen/models/download_model.dart';
import '../models/viewhierarchy1_item_model.dart';

/// A provider class for the DownloadScreen.
///
/// This provider manages the state of the DownloadScreen, including the
/// current downloadModelObj

// ignore_for_file: must_be_immutable
class DownloadProvider extends ChangeNotifier {
  DownloadModel downloadModelObj = DownloadModel();

  @override
  void dispose() {
    super.dispose();
  }
}
