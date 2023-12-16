import '../subscription_one_screen/widgets/viewhierarchy_item_widget.dart';
import 'models/subscription_one_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/history_page/history_page.dart';
import 'package:youtube/presentation/libray_page/libray_page.dart';
import 'package:youtube/presentation/subscription_tab_container_page/subscription_tab_container_page.dart';
import 'package:youtube/widgets/app_bar/appbar_leading_image.dart';
import 'package:youtube/widgets/app_bar/appbar_trailing_image.dart';
import 'package:youtube/widgets/app_bar/custom_app_bar.dart';
import 'package:youtube/widgets/custom_bottom_bar.dart';
import 'provider/subscription_one_provider.dart';

class SubscriptionOneScreen extends StatefulWidget {
  const SubscriptionOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SubscriptionOneScreenState createState() => SubscriptionOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SubscriptionOneProvider(),
      child: SubscriptionOneScreen(),
    );
  }
}

class SubscriptionOneScreenState extends State<SubscriptionOneScreen> {
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
        appBar: _buildAppBar(context),
        body: Consumer<SubscriptionOneProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 1.v,
                );
              },
              itemCount:
                  provider.subscriptionOneModelObj.viewhierarchyItemList.length,
              itemBuilder: (context, index) {
                ViewhierarchyItemModel model = provider
                    .subscriptionOneModelObj.viewhierarchyItemList[index];
                return ViewhierarchyItemWidget(
                  model,
                );
              },
            );
          },
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 105.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage19,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 15.v,
          bottom: 13.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame19,
          margin: EdgeInsets.fromLTRB(13.h, 13.v, 13.h, 11.v),
        ),
      ],
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
