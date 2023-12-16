import 'models/view_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'provider/view_provider.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  ViewPageState createState() => ViewPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ViewProvider(), child: ViewPage());
  }
}

class ViewPageState extends State<ViewPage>
    with AutomaticKeepAliveClientMixin<ViewPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Column(children: [
                    _buildContent(context),
                    SizedBox(height: 2.v),
                    _buildFrameEighteen(context),
                    SizedBox(height: 2.v),
                    _buildFrame(context)
                  ])
                ])))));
  }

  /// Section Widget
  Widget _buildContent(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapContent(context);
        },
        child: Container(
            decoration: AppDecoration.fillWhiteA,
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                    height: 215.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle720,
                          height: 215.v,
                          width: 360.h,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              width: 32.h,
                              margin:
                                  EdgeInsets.only(right: 12.h, bottom: 12.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.h, vertical: 1.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4),
                              child: Text("lbl_0_54".tr,
                                  style: theme.textTheme.labelSmall)))
                    ])),
                SizedBox(width: 54.h, child: Divider(color: appTheme.redA700))
              ]),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse43,
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            radius: BorderRadius.circular(18.h),
                            margin: EdgeInsets.only(bottom: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_heart_touching_nasheed".tr,
                                      style: theme.textTheme.titleSmall),
                                  SizedBox(height: 6.v),
                                  Text("msg_19_210_251_viewsjul".tr,
                                      style: theme.textTheme.labelLarge)
                                ])),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgFrameBlack900,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 14.v))
                      ])),
              SizedBox(height: 20.v)
            ])));
  }

  /// Section Widget
  Widget _buildFrameEighteen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFacebook,
                    height: 18.v,
                    width: 15.h),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 3.v),
                    child: Text("lbl_storts".tr,
                        style: CustomTextStyles.labelMediumBlack90002)),
                Padding(
                    padding: EdgeInsets.only(left: 2.h, top: 3.v, bottom: 6.v),
                    child: Text("lbl_beta".tr,
                        style: CustomTextStyles.robotoGray500))
              ])),
          SizedBox(height: 9.v),
          Container(
              height: 160.v,
              width: 348.h,
              margin: EdgeInsets.only(left: 12.h),
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: IntrinsicWidth(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              _buildStory(context,
                                  userImage: ImageConstant.imgRectangle95,
                                  diyToysSatisfyingText:
                                      "msg_diy_toys_satisfying".tr,
                                  viewsText: "lbl_24m_views".tr),
                              Padding(
                                  padding: EdgeInsets.only(left: 215.h),
                                  child: _buildStory(context,
                                      userImage: ImageConstant.imgRectangle93,
                                      diyToysSatisfyingText:
                                          "msg_diy_toys_satisfying".tr,
                                      viewsText: "lbl_24m_views".tr))
                            ])))),
                Padding(
                    padding: EdgeInsets.only(left: 103.h),
                    child: _buildStory(context,
                        userImage: ImageConstant.imgRectangle96,
                        diyToysSatisfyingText: "msg_diy_toys_satisfying".tr,
                        viewsText: "lbl_24m_views".tr, onTapImage: () {
                      onTapImage(context);
                    })),
                Padding(
                    padding: EdgeInsets.only(right: 44.h),
                    child: _buildStory(context,
                        userImage: ImageConstant.imgRectangle97,
                        diyToysSatisfyingText: "msg_diy_toys_satisfying".tr,
                        viewsText: "lbl_24m_views".tr, onTapImage: () {
                      onTapImage1(context);
                    }))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(children: [
      SizedBox(
          height: 215.v,
          width: double.maxFinite,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 26.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(color: appTheme.whiteA700))),
            Align(
                alignment: Alignment.center,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildThirtySix(context,
                          userImage: ImageConstant.imgRectangle721,
                          time: "lbl_0_54".tr),
                      SizedBox(
                          width: 54.h, child: Divider(color: appTheme.redA700))
                    ])),
            Padding(
                padding: EdgeInsets.only(bottom: 188.v),
                child: _buildFrameEight(context,
                    userImage: ImageConstant.imgEllipse41x36,
                    nasheedText: "msg_heart_touching_nasheed".tr,
                    viewsCount: "msg_19_210_251_viewsjul".tr))
          ])),
      SizedBox(height: 74.v),
      Container(
          height: 1.v,
          width: double.maxFinite,
          decoration: BoxDecoration(color: appTheme.whiteA700)),
      SizedBox(height: 262.v),
      _buildThirtySix(context,
          userImage: ImageConstant.imgRectangle722, time: "lbl_0_54".tr),
      Align(
          alignment: Alignment.centerLeft,
          child:
              SizedBox(width: 54.h, child: Divider(color: appTheme.redA700))),
      SizedBox(height: 493.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: _buildFrameEight(context,
              userImage: ImageConstant.imgEllipse44,
              nasheedText: "msg_heart_touching_nasheed".tr,
              viewsCount: "msg_19_210_251_viewsjul".tr)),
      SizedBox(height: 551.v),
      Container(
          height: 1.v,
          width: double.maxFinite,
          decoration: BoxDecoration(color: appTheme.whiteA700)),
      SizedBox(height: 551.v),
      _buildThirtySix(context,
          userImage: ImageConstant.imgRectangle723, time: "lbl_0_54".tr),
      Align(
          alignment: Alignment.centerLeft,
          child:
              SizedBox(width: 54.h, child: Divider(color: appTheme.redA700))),
      SizedBox(height: 782.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: _buildFrameEight(context,
              userImage: ImageConstant.imgEllipse45,
              nasheedText: "msg_heart_touching_nasheed".tr,
              viewsCount: "msg_19_210_251_viewsjul".tr)),
      SizedBox(height: 840.v),
      Container(
          height: 1.v,
          width: double.maxFinite,
          decoration: BoxDecoration(color: appTheme.whiteA700)),
      SizedBox(height: 840.v),
      _buildThirtySix(context,
          userImage: ImageConstant.imgRectangle724, time: "lbl_0_54".tr),
      Align(
          alignment: Alignment.centerLeft,
          child:
              SizedBox(width: 54.h, child: Divider(color: appTheme.redA700))),
      SizedBox(height: 1071.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: _buildFrameEight(context,
              userImage: ImageConstant.imgEllipse46,
              nasheedText: "msg_heart_touching_nasheed".tr,
              viewsCount: "msg_19_210_251_viewsjul".tr))
    ]);
  }

  /// Common widget
  Widget _buildStory(
    BuildContext context, {
    required String userImage,
    required String diyToysSatisfyingText,
    required String viewsText,
    Function? onTapImage,
  }) {
    return SizedBox(
        height: 160.v,
        width: 96.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: userImage,
              height: 160.v,
              width: 96.h,
              alignment: Alignment.center,
              onTap: () {
                onTapImage!.call();
              }),
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
                            alignment: Alignment.centerRight),
                        SizedBox(height: 87.v),
                        SizedBox(
                            width: 85.h,
                            child: Text(diyToysSatisfyingText,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.robotoWhiteA700Medium
                                    .copyWith(color: appTheme.whiteA700))),
                        SizedBox(height: 7.v),
                        Text(viewsText,
                            style: CustomTextStyles.robotoWhiteA700
                                .copyWith(color: appTheme.whiteA700))
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildThirtySix(
    BuildContext context, {
    required String userImage,
    required String time,
  }) {
    return SizedBox(
        height: 215.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: userImage,
              height: 215.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  margin: EdgeInsets.only(right: 12.h, bottom: 12.v),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 2.v),
                  decoration: AppDecoration.fillWhiteA
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Text(time,
                      style: theme.textTheme.labelSmall!
                          .copyWith(color: appTheme.black90002))))
        ]));
  }

  /// Common widget
  Widget _buildFrameEight(
    BuildContext context, {
    required String userImage,
    required String nasheedText,
    required String viewsCount,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: userImage,
          height: 1.v,
          width: 36.h,
          radius: BorderRadius.circular(18.h)),
      Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Column(children: [
            Text(nasheedText,
                style: theme.textTheme.titleSmall!
                    .copyWith(color: appTheme.black900)),
            SizedBox(height: 517.v),
            Text(viewsCount,
                style: theme.textTheme.labelLarge!
                    .copyWith(color: appTheme.gray600))
          ])),
      CustomImageView(
          imagePath: ImageConstant.imgFrameBlack900, height: 1.v, width: 24.h)
    ]);
  }

  /// Navigates to the viewOneScreen when the action is triggered.
  onTapContent(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.viewOneScreen,
    );
  }

  /// Navigates to the shortScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.shortScreen,
    );
  }

  /// Navigates to the shortScreen when the action is triggered.
  onTapImage1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.shortScreen,
    );
  }
}
