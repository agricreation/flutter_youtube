import 'models/view_one_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'provider/view_one_provider.dart';

class ViewOneScreen extends StatefulWidget {
  const ViewOneScreen({Key? key}) : super(key: key);

  @override
  ViewOneScreenState createState() => ViewOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ViewOneProvider(), child: ViewOneScreen());
  }
}

class ViewOneScreenState extends State<ViewOneScreen> {
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
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildFrameEightySix(context),
                  SizedBox(
                      height: 597.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        _buildFrameTwentyOne(context),
                        _buildFrame(context),
                        _buildContent(context)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildFrameEightySix(BuildContext context) {
    return SizedBox(
        height: 230.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup43,
              height: 230.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            width: 36.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 1.v),
                            decoration: AppDecoration.fillBlack90002.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4),
                            child: Text("lbl_7_54".tr,
                                style: theme.textTheme.labelMedium))),
                    SizedBox(height: 13.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup6,
                        height: 1.v,
                        width: 316.h)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrameTwentyOne(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 304.v, bottom: 247.v),
            padding: EdgeInsets.symmetric(vertical: 8.v),
            decoration: AppDecoration.fillWhiteA,
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Text("lbl_all".tr,
                            style: CustomTextStyles.bodySmallWhiteA700)
                      ])),
              Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                  child: Text("lbl_mixes".tr,
                      style: CustomTextStyles.bodySmallBlack90002_1)),
              Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                  child: Text("lbl_music".tr,
                      style: CustomTextStyles.bodySmallBlack90002_1)),
              Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Text("lbl_graphic".tr,
                            style: CustomTextStyles.bodySmallBlack90002_1)
                      ])),
              Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                  child: Text("lbl_ui_ux".tr,
                      style: CustomTextStyles.bodySmallBlack90002_1)),
              Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                  child: Text("lbl_islamic".tr,
                      style: CustomTextStyles.bodySmallBlack90002_1))
            ])));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
            onTap: () {
              onTapFrame(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.v),
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 11.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: SizedBox(
                                        width: 286.h,
                                        child: Text("msg".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                theme.textTheme.titleMedium))),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowDownBlack90020x20,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 29.h, top: 3.v, bottom: 36.v))
                              ])),
                      SizedBox(height: 7.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 232.h,
                              margin: EdgeInsets.only(left: 12.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_3_627_views_premiered2".tr,
                                        style: theme.textTheme.labelLarge),
                                    TextSpan(
                                        text: "msg_shirat_hzmohummad_s".tr,
                                        style: CustomTextStyles
                                            .labelLargeLightblueA700)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildFrameNinetyOne(context,
                                    arrowRightImage:
                                        ImageConstant.imgFrameBlack90024x24,
                                    shareText: "lbl_25_6k".tr),
                                Column(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame1,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  SizedBox(height: 3.v),
                                  Text("lbl_65".tr,
                                      style:
                                          CustomTextStyles.bodySmallBlack900_1)
                                ]),
                                _buildFrameNinetyOne(context,
                                    arrowRightImage:
                                        ImageConstant.imgArrowRight,
                                    shareText: "lbl_share".tr),
                                Column(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgLightBulbBlack900,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  SizedBox(height: 3.v),
                                  Text("lbl_download".tr,
                                      style:
                                          CustomTextStyles.bodySmallBlack900_1)
                                ]),
                                Column(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame2,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  SizedBox(height: 3.v),
                                  Text("lbl_save".tr,
                                      style:
                                          CustomTextStyles.bodySmallBlack900_1)
                                ])
                              ])),
                      SizedBox(height: 11.v),
                      Divider(),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 11.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgClose,
                                    height: 36.adaptSize,
                                    width: 36.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_voice_of_books".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900),
                                          SizedBox(height: 3.v),
                                          Text("lbl_289k_subscibe".tr,
                                              style: theme.textTheme.bodySmall)
                                        ])),
                                Spacer(),
                                Container(
                                    width: 106.h,
                                    margin:
                                        EdgeInsets.only(top: 3.v, bottom: 2.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 7.v),
                                    decoration: AppDecoration.fillWhiteA
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("lbl_subscribe".tr,
                                              style: CustomTextStyles
                                                  .titleSmallRedA700),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgBxBxsBellRing,
                                              height: 1.adaptSize,
                                              width: 1.adaptSize,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 8.v))
                                        ]))
                              ])),
                      SizedBox(height: 11.v),
                      Divider(),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_comments".tr,
                                              style: CustomTextStyles
                                                  .bodySmallBlack900),
                                          TextSpan(
                                              text: "lbl_149".tr,
                                              style: theme.textTheme.bodySmall)
                                        ]),
                                        textAlign: TextAlign.left)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowUp,
                                    height: 16.v,
                                    width: 10.h)
                              ])),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 12.h, right: 32.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 2.v, bottom: 10.v),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6.h, vertical: 1.v),
                                        decoration: AppDecoration.fillGreen
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Text("lbl_a".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGreen200)),
                                    Expanded(
                                        child: Container(
                                            width: 282.h,
                                            margin: EdgeInsets.only(left: 12.h),
                                            child: Text("msg2".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallBlack900_1)))
                                  ])))
                    ]))));
  }

  /// Section Widget
  Widget _buildContent(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 269.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 215.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle719,
                                          height: 215.v,
                                          width: 360.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              width: 32.h,
                                              margin: EdgeInsets.only(
                                                  right: 12.h, bottom: 12.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.h,
                                                  vertical: 1.v),
                                              decoration: AppDecoration
                                                  .fillWhiteA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Text("lbl_0_54".tr,
                                                  style: theme
                                                      .textTheme.labelSmall)))
                                    ])),
                            SizedBox(height: 25.v),
                            SizedBox(
                                width: 54.h,
                                child: Divider(color: appTheme.redA700))
                          ]))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse42,
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            radius: BorderRadius.circular(18.h),
                            margin: EdgeInsets.only(top: 1.v, bottom: 2.v)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("msg_heart_touching_nasheed".tr,
                                          style: theme.textTheme.titleSmall),
                                      SizedBox(height: 8.v),
                                      Text("msg_19_210_251_viewsjul".tr,
                                          style: theme.textTheme.labelLarge)
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgFrameBlack900,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                                left: 3.h, top: 1.v, bottom: 14.v))
                      ]))
            ])));
  }

  /// Common widget
  Widget _buildFrameNinetyOne(
    BuildContext context, {
    required String arrowRightImage,
    required String shareText,
  }) {
    return Column(children: [
      CustomImageView(
          imagePath: arrowRightImage,
          height: 24.adaptSize,
          width: 24.adaptSize),
      SizedBox(height: 3.v),
      Text(shareText,
          style: CustomTextStyles.bodySmallBlack900_1
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the viewTabContainerScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.viewTabContainerScreen,
    );
  }
}
