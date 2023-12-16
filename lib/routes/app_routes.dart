import 'package:flutter/material.dart';
import 'package:youtube/presentation/off_screen/off_screen.dart';
import 'package:youtube/presentation/on_screen/on_screen.dart';
import 'package:youtube/presentation/home_screen/home_screen.dart';
import 'package:youtube/presentation/short_screen/short_screen.dart';
import 'package:youtube/presentation/history_container_screen/history_container_screen.dart';
import 'package:youtube/presentation/download_one_screen/download_one_screen.dart';
import 'package:youtube/presentation/view_one_screen/view_one_screen.dart';
import 'package:youtube/presentation/view_tab_container_screen/view_tab_container_screen.dart';
import 'package:youtube/presentation/home_two_screen/home_two_screen.dart';
import 'package:youtube/presentation/subscription_one_screen/subscription_one_screen.dart';
import 'package:youtube/presentation/download_screen/download_screen.dart';
import 'package:youtube/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String offScreen = '/off_screen';

  static const String onScreen = '/on_screen';

  static const String homeScreen = '/home_screen';

  static const String shortScreen = '/short_screen';

  static const String subscriptionPage = '/subscription_page';

  static const String subscriptionTabContainerPage =
      '/subscription_tab_container_page';

  static const String librayPage = '/libray_page';

  static const String historyPage = '/history_page';

  static const String historyContainerScreen = '/history_container_screen';

  static const String downloadOneScreen = '/download_one_screen';

  static const String viewOneScreen = '/view_one_screen';

  static const String viewPage = '/view_page';

  static const String viewTabContainerScreen = '/view_tab_container_screen';

  static const String homeTwoScreen = '/home_two_screen';

  static const String subscriptionOneScreen = '/subscription_one_screen';

  static const String downloadScreen = '/download_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        offScreen: OffScreen.builder,
        onScreen: OnScreen.builder,
        homeScreen: HomeScreen.builder,
        shortScreen: ShortScreen.builder,
        historyContainerScreen: HistoryContainerScreen.builder,
        downloadOneScreen: DownloadOneScreen.builder,
        viewOneScreen: ViewOneScreen.builder,
        viewTabContainerScreen: ViewTabContainerScreen.builder,
        homeTwoScreen: HomeTwoScreen.builder,
        subscriptionOneScreen: SubscriptionOneScreen.builder,
        downloadScreen: DownloadScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OffScreen.builder
      };
}
