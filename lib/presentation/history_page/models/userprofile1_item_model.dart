import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.image1,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.id,
  }) {
    image1 = image1 ?? ImageConstant.imgRectangle75;
    text1 = text1 ?? "5:14";
    text2 =
        text2 ?? "Compiltation | Everything Belongs to Allah 33 Mins | omar...";
    text3 = text3 ?? "Omar & Hana - Islamic ";
    text4 = text4 ?? "5.5M views";
    id = id ?? "";
  }

  String? image1;

  String? text1;

  String? text2;

  String? text3;

  String? text4;

  String? id;
}
