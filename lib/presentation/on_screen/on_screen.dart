import 'models/on_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/widgets/custom_switch.dart';
import 'provider/on_provider.dart';

class OnScreen extends StatefulWidget {
  const OnScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnScreenState createState() => OnScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnProvider(),
      child: OnScreen(),
    );
  }
}

class OnScreenState extends State<OnScreen> {
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
          child: Container(
            decoration: AppDecoration.fillBlack,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup43,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 12.v),
                  _buildFrameRow(context),
                  SizedBox(height: 61.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserWhiteA700,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                  ),
                  SizedBox(height: 68.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 36.h,
                      margin: EdgeInsets.only(right: 12.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillBlack90002.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Text(
                        "lbl_7_54".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup6,
                    height: 1.v,
                    width: 316.h,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownWhiteA700,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Spacer(),
          Container(
            height: 20.v,
            width: 31.h,
            margin: EdgeInsets.symmetric(vertical: 2.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAntDesignPlayCircleFilled,
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 5.h),
                ),
                Selector<OnProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch,
                  builder: (context, isSelectedSwitch, child) {
                    return CustomSwitch(
                      alignment: Alignment.center,
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context.read<OnProvider>().changeSwitchBox1(value);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 20.v,
            width: 24.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 20.v,
            width: 24.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ],
      ),
    );
  }
}
