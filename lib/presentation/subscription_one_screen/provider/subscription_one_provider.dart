import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/subscription_one_screen/models/subscription_one_model.dart';
import '../models/viewhierarchy_item_model.dart';

/// A provider class for the SubscriptionOneScreen.
///
/// This provider manages the state of the SubscriptionOneScreen, including the
/// current subscriptionOneModelObj

// ignore_for_file: must_be_immutable
class SubscriptionOneProvider extends ChangeNotifier {
  SubscriptionOneModel subscriptionOneModelObj = SubscriptionOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
