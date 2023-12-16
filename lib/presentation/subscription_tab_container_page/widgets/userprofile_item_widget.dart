import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62.h,
      child: Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: Column(
          children: [
            SizedBox(
              height: 56.adaptSize,
              width: 56.adaptSize,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: userprofileItemModelObj?.userImage,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.only(right: 4.h),
                      decoration: BoxDecoration(
                        color: appTheme.blue700,
                        borderRadius: BorderRadius.circular(
                          6.h,
                        ),
                        border: Border.all(
                          color: appTheme.whiteA700,
                          width: 1.h,
                          strokeAlign: strokeAlignOutside,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14.v),
            Text(
              userprofileItemModelObj.userName!,
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
