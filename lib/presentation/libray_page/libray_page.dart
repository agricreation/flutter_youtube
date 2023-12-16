import 'models/libray_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/widgets/app_bar/appbar_leading_image.dart';
import 'package:youtube/widgets/app_bar/appbar_trailing_image.dart';
import 'package:youtube/widgets/app_bar/custom_app_bar.dart';
import 'provider/libray_provider.dart';

class LibrayPage extends StatefulWidget {
  const LibrayPage({Key? key}) : super(key: key);

  @override
  LibrayPageState createState() => LibrayPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LibrayProvider(), child: LibrayPage());
  }
}

class LibrayPageState extends State<LibrayPage> {
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: Column(children: [
                  _buildPlaylist(context),
                  SizedBox(height: 1.v),
                  _buildClientTestimonials(context),
                  SizedBox(height: 8.v),
                  _buildHistory(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 105.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgImage19,
            margin: EdgeInsets.only(left: 15.h, top: 15.v, bottom: 13.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame19,
              margin: EdgeInsets.fromLTRB(13.h, 13.v, 13.h, 11.v))
        ],
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child:
                      Text("lbl_recent".tr, style: theme.textTheme.bodyLarge)),
              SizedBox(height: 8.v),
              Container(
                  height: 161.v,
                  width: 352.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: () {
                              onTapView(context);
                            },
                            child: Container(
                                height: 161.v,
                                width: 32.h,
                                decoration:
                                    BoxDecoration(color: appTheme.whiteA700)))),
                    Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: IntrinsicWidth(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  SizedBox(
                                      height: 161.v,
                                      width: 156.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapView1(context);
                                                    },
                                                    child: Container(
                                                        height: 161.v,
                                                        width: 156.h,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .whiteA700)))),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 4.h),
                                                child: _buildRecentOrders(
                                                    context,
                                                    userImage: ImageConstant
                                                        .imgRectangle788x148,
                                                    timeText: "lbl_0_50".tr,
                                                    heartTouchingNasheed:
                                                        "msg_heart_touching_nasheed"
                                                            .tr,
                                                    anNaffe: "lbl_an_naffe".tr))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 168.h, top: 4.v, bottom: 9.v),
                                      child: _buildRecentOrders(context,
                                          userImage:
                                              ImageConstant.imgRectangle73,
                                          timeText: "lbl_0_50".tr,
                                          heartTouchingNasheed:
                                              "msg_heart_touching_nasheed".tr,
                                          anNaffe: "lbl_an_naffe".tr))
                                ])))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: () {
                              onTapContent(context);
                            },
                            child: Container(
                                margin: EdgeInsets.only(right: 36.h),
                                padding: EdgeInsets.all(4.h),
                                decoration: AppDecoration.fillWhiteA,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      _buildDoctorReviews(context,
                                          timeText: "lbl_0_50".tr),
                                      SizedBox(height: 11.v),
                                      _buildUserProfile(context,
                                          heartTouchingNasheedText:
                                              "msg_heart_touching_nasheed".tr,
                                          anNaffeText: "lbl_an_naffe".tr),
                                      SizedBox(height: 4.v)
                                    ]))))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              GestureDetector(
                  onTap: () {
                    onTapFrameFiftySix(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFrameBlack90002,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 21.h, top: 3.v),
                            child: Text("lbl_history".tr,
                                style: theme.textTheme.bodyLarge))
                      ]))),
              SizedBox(height: 28.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrameBlack9000224x24,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 20.h, top: 2.v, bottom: 2.v),
                        child: Text("lbl_your_videos".tr,
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 23.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgLightBulb,
                    height: 24.v,
                    width: 28.h,
                    margin: EdgeInsets.only(bottom: 10.v)),
                Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_downloads".tr,
                              style: CustomTextStyles.bodyLargeBlack900),
                          SizedBox(height: 1.v),
                          Text("lbl_67_videos".tr,
                              style: theme.textTheme.bodySmall)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 5.v))
              ]),
              SizedBox(height: 23.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: _buildReviews(context,
                      plusImage: ImageConstant.imgTelevision,
                      newPlaylistLabel: "lbl_your_movies".tr)),
              SizedBox(height: 23.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFrame24x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 11.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_watch_later".tr,
                                      style: theme.textTheme.bodyLarge),
                                  SizedBox(height: 1.v),
                                  Text("msg_4_unwatched_videos".tr,
                                      style: theme.textTheme.bodySmall)
                                ]))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildHistory(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 20.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text("lbl_playlists".tr,
                    style: CustomTextStyles.titleMediumBlack90002)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text("lbl_recently_added".tr,
                      style: theme.textTheme.bodyMedium)),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowDownBlack90002,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 8.h))
            ])
          ]),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: _buildReviews(context,
                  plusImage: ImageConstant.imgPlusLightBlueA700,
                  newPlaylistLabel: "lbl_new_playlist".tr)),
          SizedBox(height: 19.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgFrame66,
                height: 36.adaptSize,
                width: 36.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_liked_videos".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 1.v),
                      Text("lbl_50_videos".tr, style: theme.textTheme.bodySmall)
                    ]))
          ]),
          SizedBox(height: 28.v)
        ]));
  }

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String userImage,
    required String timeText,
    required String heartTouchingNasheed,
    required String anNaffe,
  }) {
    return Column(children: [
      SizedBox(
          height: 88.v,
          width: 148.h,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            CustomImageView(
                imagePath: userImage,
                height: 88.v,
                width: 148.h,
                alignment: Alignment.center),
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          width: 28.h,
                          margin: EdgeInsets.only(right: 6.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.h, vertical: 1.v),
                          decoration: AppDecoration.fillBlack900021.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text(timeText,
                              style: CustomTextStyles.bodySmallWhiteA70010
                                  .copyWith(color: appTheme.whiteA700)))),
                  SizedBox(height: 6.v),
                  Divider(color: appTheme.redA700)
                ]))
          ])),
      SizedBox(height: 11.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(
                      width: 108.h,
                      child: Text(heartTouchingNasheed,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(color: appTheme.black900))),
                  SizedBox(height: 3.v),
                  Text(anNaffe,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray600))
                ]),
                CustomImageView(
                    imagePath: ImageConstant.imgFrameBlack900,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(left: 7.h, bottom: 32.v))
              ]))
    ]);
  }

  /// Common widget
  Widget _buildDoctorReviews(
    BuildContext context, {
    required String timeText,
  }) {
    return SizedBox(
        height: 88.v,
        width: 148.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle74,
              height: 88.v,
              width: 148.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        width: 28.h,
                        margin: EdgeInsets.only(right: 6.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.h, vertical: 1.v),
                        decoration: AppDecoration.fillBlack900021.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text(timeText,
                            style: CustomTextStyles.bodySmallWhiteA70010
                                .copyWith(color: appTheme.whiteA700)))),
                SizedBox(height: 6.v),
                SizedBox(width: 148.h, child: Divider(color: appTheme.redA700))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String heartTouchingNasheedText,
    required String anNaffeText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                width: 108.h,
                child: Text(heartTouchingNasheedText,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: appTheme.black900))),
            SizedBox(height: 3.v),
            Text(anNaffeText,
                style: theme.textTheme.bodySmall!
                    .copyWith(color: appTheme.gray600))
          ]),
          CustomImageView(
              imagePath: ImageConstant.imgFrameBlack900,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 7.h, bottom: 33.v))
        ]);
  }

  /// Common widget
  Widget _buildReviews(
    BuildContext context, {
    required String plusImage,
    required String newPlaylistLabel,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: plusImage, height: 24.adaptSize, width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 20.h, top: 3.v),
          child: Text(newPlaylistLabel,
              style: CustomTextStyles.bodyLargeLightblueA700
                  .copyWith(color: appTheme.lightBlueA700)))
    ]);
  }

  /// Navigates to the viewOneScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.viewOneScreen,
    );
  }

  /// Navigates to the viewOneScreen when the action is triggered.
  onTapView1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.viewOneScreen,
    );
  }

  /// Navigates to the viewOneScreen when the action is triggered.
  onTapContent(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.viewOneScreen,
    );
  }

  /// Navigates to the historyContainerScreen when the action is triggered.
  onTapFrameFiftySix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyContainerScreen,
    );
  }
}
