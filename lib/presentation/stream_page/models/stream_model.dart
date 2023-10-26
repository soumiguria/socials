import '../../../core/app_export.dart';
import 'streamlist_item_model.dart';

/// This class defines the variables used in the [stream_page],
/// and is typically used to hold data that is passed between different parts of the application.
class StreamModel {
  Rx<List<StreamlistItemModel>> streamlistItemList = Rx([
    StreamlistItemModel(
        twentySeven: ImageConstant.img27.obs,
        rosalia: "Rosalia".obs,
        duration: "45 minutes ago".obs,
        rosalia1: "Rosalia".obs,
        duration1: "45 minutes ago".obs)
  ]);
}
