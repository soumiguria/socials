import '../controller/stories_and_tweets_controller.dart';
import '../models/livelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LivelistItemWidget extends StatelessWidget {
  LivelistItemWidget(
    this.livelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LivelistItemModel livelistItemModelObj;

  var controller = Get.find<StoriesAndTweetsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            children: [
              Obx(
                () => CustomIconButton(
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  padding: EdgeInsets.all(15.h),
                  decoration: IconButtonStyleHelper.fillDeepPurpleATL32,
                  child: CustomImageView(
                    imagePath: livelistItemModelObj.send!.value,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  livelistItemModelObj.newPost!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
