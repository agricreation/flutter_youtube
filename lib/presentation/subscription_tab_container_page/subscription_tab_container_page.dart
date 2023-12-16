import '../subscription_tab_container_page/widgets/userprofile_item_widget.dart';
import 'models/subscription_tab_container_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/presentation/subscription_page/subscription_page.dart';
import 'package:youtube/widgets/app_bar/appbar_title_image.dart';
import 'package:youtube/widgets/app_bar/custom_app_bar.dart';
import 'provider/subscription_tab_container_provider.dart';

// ignore_for_file: must_be_immutable
class SubscriptionTabContainerPage extends StatefulWidget {
  const SubscriptionTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  SubscriptionTabContainerPageState createState() =>
      SubscriptionTabContainerPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SubscriptionTabContainerProvider(),
      child: SubscriptionTabContainerPage(),
    );
  }
}

class SubscriptionTabContainerPageState
    extends State<SubscriptionTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
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
              _buildFrameTwentyThree(context),
              SizedBox(
                height: 535.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SubscriptionPage(),
                    SubscriptionPage(),
                    SubscriptionPage(),
                    SubscriptionPage(),
                    SubscriptionPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwentyThree(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          CustomAppBar(
            height: 41.v,
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
                        margin: EdgeInsets.only(left: 108.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  width: 334.h,
                  child: Divider(),
                ),
              ],
            ),
            styleType: Style.bgFill,
          ),
          SizedBox(height: 8.v),
          Container(
            height: 92.v,
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 3.v,
            ),
            child: Consumer<SubscriptionTabContainerProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 13.h,
                    );
                  },
                  itemCount: provider.subscriptionTabContainerModelObj
                      .userprofileItemList.length,
                  itemBuilder: (context, index) {
                    UserprofileItemModel model = provider
                        .subscriptionTabContainerModelObj
                        .userprofileItemList[index];
                    return UserprofileItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 8.v),
          Divider(
            indent: 14.h,
            endIndent: 12.h,
          ),
          SizedBox(height: 10.v),
          Container(
            height: 30.v,
            width: 349.h,
            child: TabBar(
              controller: tabviewController,
              isScrollable: true,
              labelColor: appTheme.whiteA700,
              unselectedLabelColor: appTheme.black90002,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_all".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_today".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_yeasterday".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_this_mounth".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "msg_continue_watching".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
