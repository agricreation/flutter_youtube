import '../history_page/widgets/userprofile1_item_widget.dart';
import 'models/history_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/widgets/app_bar/appbar_leading_image.dart';
import 'package:youtube/widgets/app_bar/appbar_title.dart';
import 'package:youtube/widgets/app_bar/appbar_trailing_image.dart';
import 'package:youtube/widgets/app_bar/custom_app_bar.dart';
import 'package:youtube/widgets/custom_search_view.dart';
import 'provider/history_provider.dart';

// ignore_for_file: must_be_immutable
class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryPageState createState() => HistoryPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HistoryProvider(),
      child: HistoryPage(),
    );
  }
}

class HistoryPageState extends State<HistoryPage> {
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
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    right: 12.h,
                  ),
                  child: Selector<HistoryProvider, TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.searchController,
                    builder: (context, searchController, child) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "msg_search_watch_history".tr,
                      );
                    },
                  ),
                ),
                SizedBox(height: 15.v),
                Container(
                  decoration: AppDecoration.outlineGray200,
                  child: Column(
                    children: [
                      SizedBox(height: 13.v),
                      _buildToday(context),
                      SizedBox(height: 15.v),
                      _buildUserProfile(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
        text: "lbl_history".tr,
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
  Widget _buildToday(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_today".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 14.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            decoration: AppDecoration.fillWhiteA,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFacebook,
                      height: 18.v,
                      width: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl_storts".tr,
                        style: CustomTextStyles.labelMediumBlack90002,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 3.v,
                        bottom: 7.v,
                      ),
                      child: Text(
                        "lbl_beta".tr,
                        style: CustomTextStyles.robotoGray500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  height: 160.v,
                  width: 348.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: IntrinsicWidth(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildStory(
                                  context,
                                  userImage: ImageConstant.imgRectangle9160x96,
                                  diyToysSatisfyingText:
                                      "msg_diy_toys_satisfying".tr,
                                  viewsText: "lbl_24m_views".tr,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 215.h),
                                  child: _buildStory(
                                    context,
                                    userImage: ImageConstant.imgRectangle92,
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
                      Padding(
                        padding: EdgeInsets.only(left: 103.h),
                        child: _buildStory(
                          context,
                          userImage: ImageConstant.imgRectangle93,
                          diyToysSatisfyingText: "msg_diy_toys_satisfying".tr,
                          viewsText: "lbl_24m_views".tr,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 43.h),
                        child: _buildStory(
                          context,
                          userImage: ImageConstant.imgRectangle94,
                          diyToysSatisfyingText: "msg_diy_toys_satisfying".tr,
                          viewsText: "lbl_24m_views".tr,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Consumer<HistoryProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 0.5.v),
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
            itemCount: provider.historyModelObj.userprofile1ItemList.length,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model =
                  provider.historyModelObj.userprofile1ItemList[index];
              return Userprofile1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildStory(
    BuildContext context, {
    required String userImage,
    required String diyToysSatisfyingText,
    required String viewsText,
  }) {
    return SizedBox(
      height: 160.v,
      width: 96.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 160.v,
            width: 96.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 87.v),
                  SizedBox(
                    width: 85.h,
                    child: Text(
                      diyToysSatisfyingText,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.robotoWhiteA700Medium.copyWith(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    viewsText,
                    style: CustomTextStyles.robotoWhiteA700.copyWith(
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
}
