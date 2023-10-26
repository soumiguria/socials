import '../../../core/app_export.dart';

/// This class is used in the [postitem_item_widget] screen.
class PostitemItemModel {
  PostitemItemModel({
    this.rizalReynaldhi,
    this.duration,
    this.description,
    this.bali,
    this.dreams,
    this.zipcode,
    this.eightHundred,
    this.id,
  }) {
    rizalReynaldhi = rizalReynaldhi ?? Rx("Rizal Reynaldhi");
    duration = duration ?? Rx("35 minutes ago");
    description = description ??
        Rx("Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true");
    bali = bali ?? Rx("#Bali");
    dreams = dreams ?? Rx("#dreams");
    zipcode = zipcode ?? Rx("2200");
    eightHundred = eightHundred ?? Rx("800");
    id = id ?? Rx("");
  }

  Rx<String>? rizalReynaldhi;

  Rx<String>? duration;

  Rx<String>? description;

  Rx<String>? bali;

  Rx<String>? dreams;

  Rx<String>? zipcode;

  Rx<String>? eightHundred;

  Rx<String>? id;
}
