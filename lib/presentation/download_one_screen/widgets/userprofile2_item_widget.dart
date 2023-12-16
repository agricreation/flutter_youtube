import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

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
            child: Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                right: 8.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90.v,
                    width: 148.h,
                    margin: EdgeInsets.only(top: 1.v),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: userprofile2ItemModelObj?.image514,
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
                              userprofile2ItemModelObj.frame77!,
                              style: CustomTextStyles.bodySmallBlack90002,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 6.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 137.h,
                              child: Text(
                                userprofile2ItemModelObj
                                    .compiltationEverything!,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Text(
                              userprofile2ItemModelObj.omarHanaIslamic!,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              userprofile2ItemModelObj.mViews!,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrameBlack900,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            bottom: 64.v,
                          ),
                        ),
                      ],
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
}
