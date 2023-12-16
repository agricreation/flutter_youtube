import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/history_container_screen/models/history_container_model.dart';

/// A provider class for the HistoryContainerScreen.
///
/// This provider manages the state of the HistoryContainerScreen, including the
/// current historyContainerModelObj

// ignore_for_file: must_be_immutable
class HistoryContainerProvider extends ChangeNotifier {
  HistoryContainerModel historyContainerModelObj = HistoryContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
