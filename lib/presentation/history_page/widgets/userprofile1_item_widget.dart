import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 91.v,
      width: 336.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 90.v,
              width: 336.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90.v,
                  width: 148.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: userprofile1ItemModelObj?.image1,
                        height: 88.v,
                        width: 148.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 24.h,
                          margin: EdgeInsets.only(
                            right: 7.h,
                            bottom: 10.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillBlack9001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder1,
                          ),
                          child: Text(
                            userprofile1ItemModelObj.text1!,
                            style: CustomTextStyles.bodySmallBlack90002,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 137.h,
                        child: Text(
                          userprofile1ItemModelObj.text2!,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Text(
                        userprofile1ItemModelObj.text3!,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        userprofile1ItemModelObj.text4!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack900,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    bottom: 71.v,
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
