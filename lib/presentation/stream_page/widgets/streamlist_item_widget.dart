import '../controller/stream_controller.dart';
import '../models/streamlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class StreamlistItemWidget extends StatelessWidget {
  StreamlistItemWidget(
    this.streamlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StreamlistItemModel streamlistItemModelObj;

  var controller = Get.find<StreamController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 356.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: streamlistItemModelObj.twentySeven!.value,
              height: 540.v,
              width: 356.h,
              radius: BorderRadius.circular(
                15.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse11,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          streamlistItemModelObj.rosalia!.value,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Obx(
                        () => Text(
                          streamlistItemModelObj.duration!.value,
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse11,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          streamlistItemModelObj.rosalia1!.value,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Obx(
                        () => Text(
                          streamlistItemModelObj.duration1!.value,
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
