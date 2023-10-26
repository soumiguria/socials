import '../../../core/app_export.dart';

/// This class is used in the [eventslist_item_widget] screen.
class EventslistItemModel {
  EventslistItemModel({
    this.lIVEWeTheFest,
    this.lIVEWeTheFest1,
    this.price,
    this.id,
  }) {
    lIVEWeTheFest = lIVEWeTheFest ?? Rx(ImageConstant.img19144x147);
    lIVEWeTheFest1 = lIVEWeTheFest1 ?? Rx("LIVE - We The Fest");
    price = price ?? Rx("19 : 00 | Forg Stadium");
    id = id ?? Rx("");
  }

  Rx<String>? lIVEWeTheFest;

  Rx<String>? lIVEWeTheFest1;

  Rx<String>? price;

  Rx<String>? id;
}
