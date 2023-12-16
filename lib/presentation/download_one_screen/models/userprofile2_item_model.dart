import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.image514,
    this.frame77,
    this.compiltationEverything,
    this.omarHanaIslamic,
    this.mViews,
    this.id,
  }) {
    image514 = image514 ?? ImageConstant.imgRectangle711;
    frame77 = frame77 ?? "5:14";
    compiltationEverything = compiltationEverything ??
        "Compiltation | Everything Belongs to Allah 33 Mins | omar...";
    omarHanaIslamic = omarHanaIslamic ?? "Omar & Hana - Islamic ";
    mViews = mViews ?? "5.5M views";
    id = id ?? "";
  }

  String? image514;

  String? frame77;

  String? compiltationEverything;

  String? omarHanaIslamic;

  String? mViews;

  String? id;
}
