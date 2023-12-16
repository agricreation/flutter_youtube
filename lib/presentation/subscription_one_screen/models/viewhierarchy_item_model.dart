import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.rectangleImage,
    this.shortsText,
    this.circleImage,
    this.nasheedText,
    this.viewsText,
    this.id,
  }) {
    rectangleImage = rectangleImage ?? ImageConstant.imgRectangle727;
    shortsText = shortsText ?? "SHORTS";
    circleImage = circleImage ?? ImageConstant.imgEllipse49;
    nasheedText = nasheedText ?? "Heart Touching Nasheed #Shorts";
    viewsText = viewsText ?? "19,210,251 viewsJul • 1, 2016";
    id = id ?? "";
  }

  String? rectangleImage;

  String? shortsText;

  String? circleImage;

  String? nasheedText;

  String? viewsText;

  String? id;
}
