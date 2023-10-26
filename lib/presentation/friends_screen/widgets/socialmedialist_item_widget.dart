import '../controller/friends_controller.dart';
import '../models/socialmedialist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class SocialmedialistItemWidget extends StatelessWidget {
  SocialmedialistItemWidget(
    this.socialmedialistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SocialmedialistItemModel socialmedialistItemModelObj;

  var controller = Get.find<FriendsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Obx(
        () => CustomImageView(
          imagePath: socialmedialistItemModelObj.twitter!.value,
          height: 50.adaptSize,
          width: 50.adaptSize,
        ),
      ),
    );
  }
}
