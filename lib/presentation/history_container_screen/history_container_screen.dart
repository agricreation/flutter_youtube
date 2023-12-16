import 'models/history_container_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/history_page/history_page.dart';
import 'package:youtube/presentation/libray_page/libray_page.dart';
import 'package:youtube/presentation/subscription_tab_container_page/subscription_tab_container_page.dart';
import 'package:youtube/widgets/custom_bottom_bar.dart';
import 'provider/history_container_provider.dart';

class HistoryContainerScreen extends StatefulWidget {
  const HistoryContainerScreen({Key? key}) : super(key: key);

  @override
  HistoryContainerScreenState createState() => HistoryContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HistoryContainerProvider(),
        child: HistoryContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class HistoryContainerScreenState extends State<HistoryContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.historyPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Shorts:
        return AppRoutes.historyPage;
      case BottomBarEnum.Subscription:
        return AppRoutes.librayPage;
      case BottomBarEnum.Library:
        return AppRoutes.subscriptionTabContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.historyPage:
        return HistoryPage();
      case AppRoutes.librayPage:
        return LibrayPage();
      case AppRoutes.subscriptionTabContainerPage:
        return SubscriptionTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
