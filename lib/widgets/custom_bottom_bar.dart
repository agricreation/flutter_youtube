import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavShorts,
      activeIcon: ImageConstant.imgNavShorts,
      title: "lbl_shorts".tr,
      type: BottomBarEnum.Shorts,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPlus,
      activeIcon: ImageConstant.imgPlus,
      title: "lbl_shorts".tr,
      type: BottomBarEnum.Shorts,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSubscription,
      activeIcon: ImageConstant.imgNavSubscription,
      title: "lbl_subscription".tr,
      type: BottomBarEnum.Subscription,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavLibrary,
      activeIcon: ImageConstant.imgNavLibrary,
      title: "lbl_library".tr,
      type: BottomBarEnum.Library,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          if (bottomMenuList[index].isCircle) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 42.adaptSize,
                width: 42.adaptSize,
              ),
              label: '',
            );
          }
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  color: appTheme.black90001,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: CustomTextStyles.bodySmallBlack90002_1.copyWith(
                    color: appTheme.black90002,
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 26.v,
                  width: 30.h,
                  color: appTheme.black90002,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: CustomTextStyles.bodySmallBlack90002_1.copyWith(
                    color: appTheme.black90002,
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Shorts,
  Subscription,
  Library,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isCircle = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
