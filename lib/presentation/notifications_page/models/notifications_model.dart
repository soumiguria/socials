import '../../../core/app_export.dart';
import 'notifications_item_model.dart';

/// This class defines the variables used in the [notifications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {
  Rx<List<NotificationsItemModel>> notificationsItemList = Rx([
    NotificationsItemModel(
        image: ImageConstant.imgEllipse22.obs,
        kevinHasFollowed: "Kevin has followed you".obs,
        duration: "1 hour ago".obs),
    NotificationsItemModel(
        image: ImageConstant.imgEllipse2254x52.obs,
        kevinHasFollowed:
            "Arman has commented on your story\n “hey there” to your timeline"
                .obs,
        duration: "2 hours ago".obs),
    NotificationsItemModel(image: ImageConstant.imgEllipse221.obs),
    NotificationsItemModel(
        image: ImageConstant.imgEllipse222.obs,
        kevinHasFollowed:
            "Arman has commented on your story\n “hey there” to your timeline"
                .obs,
        duration: "2 hours ago".obs),
    NotificationsItemModel(
        image: ImageConstant.imgEllipse22.obs,
        kevinHasFollowed:
            "Arman has commented on your story\n “hey there” to your timeline"
                .obs,
        duration: "2 hours ago".obs)
  ]);
}
