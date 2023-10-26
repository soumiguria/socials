import '../../../core/app_export.dart';
import 'socialmedialist_item_model.dart';
import 'followlist_item_model.dart';

/// This class defines the variables used in the [friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FriendsModel {
  Rx<List<SocialmedialistItemModel>> socialmedialistItemList = Rx([
    SocialmedialistItemModel(twitter: ImageConstant.imgTwitterBlue500.obs),
    SocialmedialistItemModel(twitter: ImageConstant.imgFacebookBlueA400.obs),
    SocialmedialistItemModel(twitter: ImageConstant.imgLocation.obs)
  ]);

  Rx<List<FollowlistItemModel>> followlistItemList = Rx([
    FollowlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse5.obs,
        kevinAllsrub1: "Kevin Allsrub".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse6.obs,
        kevinAllsrub1: "Sarah Owen".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse7.obs,
        kevinAllsrub1: "Rick Onad".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse8.obs,
        kevinAllsrub1: "Steven Ford".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse9.obs,
        kevinAllsrub1: "Lucas Anna ".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse10.obs,
        kevinAllsrub1: "Nabila Remaar".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse11.obs,
        kevinAllsrub1: "Rosalia".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs)
  ]);
}
