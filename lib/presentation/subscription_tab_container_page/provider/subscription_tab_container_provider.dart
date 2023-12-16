import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/subscription_tab_container_page/models/subscription_tab_container_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the SubscriptionTabContainerPage.
///
/// This provider manages the state of the SubscriptionTabContainerPage, including the
/// current subscriptionTabContainerModelObj

// ignore_for_file: must_be_immutable
class SubscriptionTabContainerProvider extends ChangeNotifier {
  SubscriptionTabContainerModel subscriptionTabContainerModelObj =
      SubscriptionTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
