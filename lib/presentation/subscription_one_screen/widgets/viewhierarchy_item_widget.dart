import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          SizedBox(
            height: 215.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: viewhierarchyItemModelObj?.rectangleImage,
                  height: 215.v,
                  width: 360.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(297.h, 189.v, 12.h, 12.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillWhiteA.copyWith(
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
                            viewhierarchyItemModelObj.shortsText!,
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: viewhierarchyItemModelObj?.circleImage,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        viewhierarchyItemModelObj.nasheedText!,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        viewhierarchyItemModelObj.viewsText!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 14.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }
}
