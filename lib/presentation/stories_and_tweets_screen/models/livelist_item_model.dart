import '../../../core/app_export.dart';

/// This class is used in the [livelist_item_widget] screen.
class LivelistItemModel {
  LivelistItemModel({
    this.send,
    this.newPost,
    this.id,
  }) {
    send = send ?? Rx(ImageConstant.imgSend);
    newPost = newPost ?? Rx("New Post");
    id = id ?? Rx("");
  }

  Rx<String>? send;

  Rx<String>? newPost;

  Rx<String>? id;
}
