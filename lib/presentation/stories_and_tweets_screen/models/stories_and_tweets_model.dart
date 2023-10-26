import '../../../core/app_export.dart';
import 'livelist_item_model.dart';
import 'postlist_item_model.dart';

/// This class defines the variables used in the [stories_and_tweets_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StoriesAndTweetsModel {
  Rx<List<LivelistItemModel>> livelistItemList = Rx([
    LivelistItemModel(send: ImageConstant.imgSend.obs, newPost: "New Post".obs),
    LivelistItemModel(newPost: "Jordan".obs),
    LivelistItemModel(newPost: "Angeline".obs),
    LivelistItemModel(newPost: "Chrystin".obs),
    LivelistItemModel(newPost: "Vrindha".obs)
  ]);

  Rx<List<PostlistItemModel>> postlistItemList = Rx([
    PostlistItemModel(
        albertOConnor: "Albert O’connor".obs,
        duration: "4  hours ago".obs,
        introduceIAmA:
            "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer."
                .obs,
        zipcode: "2200".obs,
        eightHundred: "800".obs),
    PostlistItemModel(
        albertOConnor: "Albert O’connor".obs,
        duration: "4  hours ago".obs,
        introduceIAmA:
            "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer."
                .obs,
        zipcode: "2200".obs,
        eightHundred: "800".obs)
  ]);
}
