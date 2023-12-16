import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/history_page/models/history_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the HistoryPage.
///
/// This provider manages the state of the HistoryPage, including the
/// current historyModelObj

// ignore_for_file: must_be_immutable
class HistoryProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HistoryModel historyModelObj = HistoryModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
