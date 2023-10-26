import '../controller/notifications_controller.dart';
import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: notificationsItemModelObj.image!.value,
            height: 54.v,
            width: 52.h,
            radius: BorderRadius.circular(
              27.h,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    notificationsItemModelObj.kevinHasFollowed!.value,
                    style: CustomTextStyles.titleMediumBlack90001,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    notificationsItemModelObj.duration!.value,
                    style: CustomTextStyles.bodyLargeGray600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
