import '../../../core/app_export.dart';

/// This class is used in the [pageview_item_widget] screen.
class PageviewItemModel {
  PageviewItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
