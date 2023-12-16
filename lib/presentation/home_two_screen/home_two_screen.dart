import 'models/home_two_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/history_page/history_page.dart';
import 'package:youtube/presentation/libray_page/libray_page.dart';
import 'package:youtube/presentation/subscription_tab_container_page/subscription_tab_container_page.dart';
import 'package:youtube/widgets/app_bar/appbar_subtitle.dart';
import 'package:youtube/widgets/app_bar/appbar_title_edittext.dart';
import 'package:youtube/widgets/app_bar/appbar_title_image.dart';
import 'package:youtube/widgets/app_bar/custom_app_bar.dart';
import 'package:youtube/widgets/custom_bottom_bar.dart';
import 'provider/home_two_provider.dart';

class HomeTwoScreen extends StatefulWidget {
  const HomeTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTwoScreenState createState() => HomeTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeTwoProvider(),
      child: HomeTwoScreen(),
    );
  }
}

class HomeTwoScreenState extends State<HomeTwoScreen> {
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
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrameNine(context),
                SizedBox(height: 8.v),
                _buildFrameEighteen(context),
                SizedBox(height: 8.v),
                _buildFrameNineteen(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgImage19,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgFrame19,
                  margin: EdgeInsets.only(left: 112.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Row(
            children: [
              SizedBox(
                height: 1.v,
                width: 89.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        child: Divider(
                          endIndent: 88.h,
                        ),
                      ),
                    ),
                    Selector<HomeTwoProvider, TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.exploreController,
                      builder: (context, exploreController, child) {
                        return AppbarTitleEdittext(
                          hintText: "lbl_explore".tr,
                          controller: exploreController,
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Divider(
                  indent: 14.h,
                ),
              ),
              AppbarSubtitle(
                text: "lbl_all".tr,
                margin: EdgeInsets.only(left: 15.h),
              ),
              Container(
                height: 1.v,
                width: 56.h,
                margin: EdgeInsets.only(left: 4.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 56.h,
                        child: Divider(
                          color: appTheme.gray200,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.h),
                        child: Text(
                          "lbl_mixes".tr,
                          style: CustomTextStyles.bodySmallBlack90002_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1.v,
                width: 57.h,
                margin: EdgeInsets.only(left: 4.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 57.h,
                        child: Divider(
                          color: appTheme.gray200,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.h),
                        child: Text(
                          "lbl_music".tr,
                          style: CustomTextStyles.bodySmallBlack90002_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1.v,
                width: 56.h,
                margin: EdgeInsets.only(left: 4.h),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 56.h,
                        child: Divider(
                          color: appTheme.gray200,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          right: 2.h,
                        ),
                        child: Text(
                          "lbl_graphic".tr,
                          style: CustomTextStyles.bodySmallBlack90002_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildFrameNine(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle725,
            height: 215.v,
            width: 360.h,
          ),
          SizedBox(height: 12.v),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse47,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      radius: BorderRadius.circular(
                        18.h,
                      ),
                      margin: EdgeInsets.only(top: 1.v),
                    ),
                    Expanded(
                      child: Container(
                        width: 257.h,
                        margin: EdgeInsets.only(
                          left: 12.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "msg_the_beauty_of_existence".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameBlack900,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 6.h,
                        top: 1.v,
                        bottom: 12.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.only(left: 48.h),
                  child: Text(
                    "msg_19_210_251_viewsjul".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEighteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                  height: 29.v,
                  width: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 4.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_storts".tr,
                    style: CustomTextStyles.titleMediumBlack90002,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 5.v,
                    bottom: 11.v,
                  ),
                  child: Text(
                    "lbl_beta".tr,
                    style: CustomTextStyles.bodySmallGray500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            height: 250.v,
            width: 348.h,
            margin: EdgeInsets.only(left: 12.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 36.h),
                  child: _buildDiyToysSatisfying(
                    context,
                    userImage: ImageConstant.imgRectangle98,
                    diyToysSatisfyingText: "msg_diy_toys_satisfying".tr,
                    viewsText: "lbl_24m_views".tr,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildDiyToysSatisfying(
                            context,
                            userImage: ImageConstant.imgRectangle99,
                            diyToysSatisfyingText: "msg_diy_toys_satisfying".tr,
                            viewsText: "lbl_24m_views".tr,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 174.h),
                            child: _buildDiyToysSatisfying(
                              context,
                              userImage: ImageConstant.imgRectangle910,
                              diyToysSatisfyingText:
                                  "msg_diy_toys_satisfying".tr,
                              viewsText: "lbl_24m_views".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNineteen(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle726,
            height: 215.v,
            width: 360.h,
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse48,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                  margin: EdgeInsets.only(bottom: 18.v),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 264.h,
                          child: Text(
                            "msg_the_beauty_of_existence".tr,
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "msg_19_210_251_viewsjul".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 30.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
        ],
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

  /// Common widget
  Widget _buildDiyToysSatisfying(
    BuildContext context, {
    required String userImage,
    required String diyToysSatisfyingText,
    required String viewsText,
  }) {
    return SizedBox(
      height: 250.v,
      width: 150.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 250.v,
            width: 150.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 135.v),
                  SizedBox(
                    width: 132.h,
                    child: Text(
                      diyToysSatisfyingText,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeWhiteA700.copyWith(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    viewsText,
                    style: theme.textTheme.labelMedium!.copyWith(
                      color: appTheme.whiteA700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
