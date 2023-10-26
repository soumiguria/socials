import '../../../core/app_export.dart';

/// This class is used in the [postlist_item_widget] screen.
class PostlistItemModel {
  PostlistItemModel({
    this.albertOConnor,
    this.duration,
    this.introduceIAmA,
    this.zipcode,
    this.eightHundred,
    this.id,
  }) {
    albertOConnor = albertOConnor ?? Rx("Albert O’connor");
    duration = duration ?? Rx("4  hours ago");
    introduceIAmA = introduceIAmA ??
        Rx("Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.");
    zipcode = zipcode ?? Rx("2200");
    eightHundred = eightHundred ?? Rx("800");
    id = id ?? Rx("");
  }

  Rx<String>? albertOConnor;

  Rx<String>? duration;

  Rx<String>? introduceIAmA;

  Rx<String>? zipcode;

  Rx<String>? eightHundred;

  Rx<String>? id;
}
