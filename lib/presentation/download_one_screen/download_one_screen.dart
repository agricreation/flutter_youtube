import '../download_one_screen/widgets/userprofile2_item_widget.dart';
import 'models/download_one_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/history_page/history_page.dart';
import 'package:youtube/presentation/libray_page/libray_page.dart';
import 'package:youtube/presentation/subscription_tab_container_page/subscription_tab_container_page.dart';
import 'package:youtube/widgets/app_bar/appbar_leading_image.dart';
import 'package:youtube/widgets/app_bar/appbar_title.dart';
import 'package:youtube/widgets/app_bar/appbar_trailing_image.dart';
import 'package:youtube/widgets/app_bar/custom_app_bar.dart';
import 'package:youtube/widgets/custom_bottom_bar.dart';
import 'provider/download_one_provider.dart';

class DownloadOneScreen extends StatefulWidget {
  const DownloadOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DownloadOneScreenState createState() => DownloadOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DownloadOneProvider(),
      child: DownloadOneScreen(),
    );
  }
}

class DownloadOneScreenState extends State<DownloadOneScreen> {
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
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 11.v),
              _buildUserProfile(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownBlack900,
        margin: EdgeInsets.only(
          left: 14.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_downloads".tr,
        margin: EdgeInsets.only(left: 14.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame19,
          margin: EdgeInsets.all(12.h),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Consumer<DownloadOneProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0.v),
                  child: SizedBox(
                    width: 72.h,
                    child: Divider(
                      height: 2.v,
                      thickness: 2.v,
                      color: appTheme.redA700,
                    ),
                  ),
                );
              },
              itemCount:
                  provider.downloadOneModelObj.userprofile2ItemList.length,
              itemBuilder: (context, index) {
                Userprofile2ItemModel model =
                    provider.downloadOneModelObj.userprofile2ItemList[index];
                return Userprofile2ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
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
