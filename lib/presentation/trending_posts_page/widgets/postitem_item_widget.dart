import '../controller/trending_posts_controller.dart';
import '../models/postitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class PostitemItemWidget extends StatelessWidget {
  PostitemItemWidget(
    this.postitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PostitemItemModel postitemItemModelObj;

  var controller = Get.find<TrendingPostsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2135x35,
                height: 35.adaptSize,
                width: 35.adaptSize,
                radius: BorderRadius.circular(
                  17.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        postitemItemModelObj.rizalReynaldhi!.value,
                        style: CustomTextStyles.labelLargePrimary,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        postitemItemModelObj.duration!.value,
                        style: CustomTextStyles.labelMediumBluegray100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 141.h,
            child: Obx(
              () => Text(
                postitemItemModelObj.description!.value,
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            children: [
              Obx(
                () => Text(
                  postitemItemModelObj.bali!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Obx(
                  () => Text(
                    postitemItemModelObj.dreams!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLightBulb,
                height: 17.v,
                width: 19.h,
                margin: EdgeInsets.only(top: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 1.v,
                ),
                child: Obx(
                  () => Text(
                    postitemItemModelObj.zipcode!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 18.v,
                width: 19.h,
                margin: EdgeInsets.only(left: 29.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 3.v,
                ),
                child: Obx(
                  () => Text(
                    postitemItemModelObj.eightHundred!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
