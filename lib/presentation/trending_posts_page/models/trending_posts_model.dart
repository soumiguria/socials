import '../../../core/app_export.dart';
import 'postitem_item_model.dart';

/// This class defines the variables used in the [trending_posts_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingPostsModel {
  Rx<List<PostitemItemModel>> postitemItemList = Rx([
    PostitemItemModel(
        rizalReynaldhi: "Rizal Reynaldhi".obs,
        duration: "35 minutes ago".obs,
        description:
            "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true"
                .obs,
        bali: "#Bali".obs,
        dreams: "#dreams".obs,
        zipcode: "2200".obs,
        eightHundred: "800".obs),
    PostitemItemModel(
        rizalReynaldhi: "Rizal Reynaldhi".obs,
        duration: "35 minutes ago".obs,
        description:
            "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true"
                .obs,
        bali: "#Bali".obs,
        dreams: "#dreams".obs,
        zipcode: "2200".obs,
        eightHundred: "800".obs)
  ]);
}
