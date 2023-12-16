import 'models/view_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/view_page/view_page.dart';
import 'provider/view_tab_container_provider.dart';

class ViewTabContainerScreen extends StatefulWidget {
  const ViewTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ViewTabContainerScreenState createState() => ViewTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ViewTabContainerProvider(),
      child: ViewTabContainerScreen(),
    );
  }
}

class ViewTabContainerScreenState extends State<ViewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrameEightySix(context),
                _buildTabview(context),
                SizedBox(
                  height: 524.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ViewPage(),
                      ViewPage(),
                      ViewPage(),
                      ViewPage(),
                      ViewPage(),
                      ViewPage(),
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
  Widget _buildFrameEightySix(BuildContext context) {
    return Container(
      height: 230.v,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgFrame86,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle24,
            height: 230.v,
            width: 360.h,
            alignment: Alignment.center,
          ),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 46.v,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
      ),
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.black90002,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          8.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray800,
          borderRadius: BorderRadius.circular(
            15.h,
          ),
          border: Border.all(
            color: appTheme.gray600,
            width: 1.h,
            strokeAlign: strokeAlignCenter,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_mixes".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_music".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_graphic".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_ui_ux".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_islamic".tr,
            ),
          ),
        ],
      ),
    );
  }
}
