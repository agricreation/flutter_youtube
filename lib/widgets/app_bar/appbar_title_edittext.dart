import 'package:flutter/material.dart';
import 'package:youtube/core/app_export.dart';
import 'package:youtube/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 89.h,
        controller: controller,
        hintText: "lbl_explore".tr,
      ),
    );
  }
}
