import 'models/subscription_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'provider/subscription_provider.dart';

// ignore_for_file: must_be_immutable
class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key})
      : super(
          key: key,
        );

  @override
  SubscriptionPageState createState() => SubscriptionPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SubscriptionProvider(),
      child: SubscriptionPage(),
    );
  }
}

class SubscriptionPageState extends State<SubscriptionPage>
    with AutomaticKeepAliveClientMixin<SubscriptionPage> {
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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              Column(
                children: [
                  _buildContent(context),
                  _buildPngaaaOne(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContent(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          _buildContentTwo(
            context,
            userImage: ImageConstant.imgRectangle71,
            shortsText: "lbl_shorts3".tr,
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: _buildFrameEight(
              context,
              heartTouchingNasheed: "msg_heart_touching_nasheed".tr,
              viewsJul: "msg_19_210_251_viewsjul".tr,
            ),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPngaaaOne(BuildContext context) {
    return SizedBox(
      height: 258.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _buildContentTwo(
            context,
            userImage: ImageConstant.imgRectangle72,
            shortsText: "lbl_shorts3".tr,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 231.v,
              right: 12.h,
            ),
            child: _buildFrameEight(
              context,
              heartTouchingNasheed: "msg_heart_touching_nasheed".tr,
              viewsJul: "msg_19_210_251_viewsjul".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContentTwo(
    BuildContext context, {
    required String userImage,
    required String shortsText,
  }) {
    return Container(
      height: 258.v,
      width: double.maxFinite,
      decoration: AppDecoration.fillWhiteA,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 215.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(297.h, 189.v, 12.h, 55.v),
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 1.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPngaaa1,
                    height: 10.v,
                    width: 8.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      shortsText,
                      style: theme.textTheme.labelSmall!.copyWith(
                        color: appTheme.black90002,
                      ),
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

  /// Common widget
  Widget _buildFrameEight(
    BuildContext context, {
    required String heartTouchingNasheed,
    required String viewsJul,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse427x36,
          height: 27.v,
          width: 36.h,
          radius: BorderRadius.circular(
            18.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heartTouchingNasheed,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                viewsJul,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: appTheme.gray600,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgFrameBlack900,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
      ],
    );
  }
}
