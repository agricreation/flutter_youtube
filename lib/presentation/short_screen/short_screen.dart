import 'models/short_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/widgets/app_bar/appbar_leading_image.dart';
import 'package:youtube/widgets/app_bar/appbar_trailing_image.dart';
import 'package:youtube/widgets/app_bar/custom_app_bar.dart';
import 'package:youtube/widgets/custom_elevated_button.dart';
import 'package:youtube/widgets/custom_icon_button.dart';
import 'provider/short_provider.dart';

class ShortScreen extends StatefulWidget {
  const ShortScreen({Key? key}) : super(key: key);

  @override
  ShortScreenState createState() => ShortScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ShortProvider(), child: ShortScreen());
  }
}

class ShortScreenState extends State<ShortScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 720.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle10,
                      height: 720.v,
                      width: 360.h,
                      alignment: Alignment.center),
                  _buildFrameThirtyEight(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCamera,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrameThirtyEight(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(bottom: 31.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.only(top: 239.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 240.h,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_diy_toys_satisfying3".tr,
                                      style:
                                          CustomTextStyles.bodyLargeWhiteA700),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "lbl_sadek".tr,
                                      style: CustomTextStyles
                                          .titleMediumWhiteA700Bold),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "lbl_shorts2".tr,
                                      style: CustomTextStyles
                                          .titleMediumWhiteA700Bold),
                                  TextSpan(
                                      text: "lbl_tiktok".tr,
                                      style:
                                          CustomTextStyles.bodyLargeWhiteA700)
                                ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 20.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFrame34,
                              height: 32.adaptSize,
                              width: 32.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 8.h, top: 7.v, bottom: 7.v),
                              child: Text("lbl_sadek_tuts".tr,
                                  style: CustomTextStyles.titleSmallWhiteA700)),
                          CustomElevatedButton(
                              width: 98.h,
                              text: "lbl_subscribe".tr,
                              margin: EdgeInsets.only(left: 8.h))
                        ])
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame,
                        height: 36.adaptSize,
                        width: 36.adaptSize),
                    SizedBox(height: 2.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgFrameWhiteA700,
                        height: 36.adaptSize,
                        width: 36.adaptSize),
                    SizedBox(height: 3.v),
                    Text("lbl_245k".tr,
                        style: CustomTextStyles.labelLargeWhiteA700),
                    SizedBox(height: 19.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgFrameWhiteA70036x36,
                        height: 36.adaptSize,
                        width: 36.adaptSize),
                    SizedBox(height: 3.v),
                    Text("lbl_dislike".tr,
                        style: CustomTextStyles.labelLargeWhiteA700),
                    SizedBox(height: 19.v),
                    CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(2.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgTelevisionWhiteA700)),
                    SizedBox(height: 3.v),
                    Text("lbl_952".tr,
                        style: CustomTextStyles.labelLargeWhiteA700),
                    SizedBox(height: 19.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgQuestion,
                        height: 36.adaptSize,
                        width: 36.adaptSize),
                    SizedBox(height: 3.v),
                    Text("lbl_share".tr,
                        style: CustomTextStyles.labelLargeWhiteA700),
                    SizedBox(height: 17.v),
                    CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgThumbsUp))
                  ]))
            ])));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
