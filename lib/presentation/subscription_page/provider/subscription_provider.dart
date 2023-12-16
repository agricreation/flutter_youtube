import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/subscription_page/models/subscription_model.dart';

/// A provider class for the SubscriptionPage.
///
/// This provider manages the state of the SubscriptionPage, including the
/// current subscriptionModelObj
class SubscriptionProvider extends ChangeNotifier {
  SubscriptionModel subscriptionModelObj = SubscriptionModel();

  @override
  void dispose() {
    super.dispose();
  }
}
