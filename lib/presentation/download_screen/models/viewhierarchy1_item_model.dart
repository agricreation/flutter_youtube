import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
    this.image514,
    this.text514,
    this.textCompilation,
    this.textOmarHanaIslamic,
    this.text55MViews,
    this.id,
  }) {
    image514 = image514 ?? ImageConstant.imgRectangle711;
    text514 = text514 ?? "5:14";
    textCompilation = textCompilation ??
        "Compiltation | Everything Belongs to Allah 33 Mins | omar...";
    textOmarHanaIslamic = textOmarHanaIslamic ?? "Omar & Hana - Islamic ";
    text55MViews = text55MViews ?? "5.5M views";
    id = id ?? "";
  }

  String? image514;

  String? text514;

  String? textCompilation;

  String? textOmarHanaIslamic;

  String? text55MViews;

  String? id;
}
