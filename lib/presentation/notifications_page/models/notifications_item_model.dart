import '../../../core/app_export.dart';

/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel {
  NotificationsItemModel({
    this.image,
    this.kevinHasFollowed,
    this.duration,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgEllipse22);
    kevinHasFollowed = kevinHasFollowed ?? Rx("Kevin has followed you");
    duration = duration ?? Rx("1 hour ago");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? kevinHasFollowed;

  Rx<String>? duration;

  Rx<String>? id;
}
