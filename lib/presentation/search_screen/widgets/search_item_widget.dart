import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(
    this.searchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: searchItemModelObj.kevinAllsrub!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
              margin: EdgeInsets.only(
                left: 3.h,
                bottom: 6.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    searchItemModelObj.kevinAllsrub1!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    searchItemModelObj.yourEFriendsOn!.value,
                    style: CustomTextStyles.bodyMediumGray600,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            width: 76.h,
            text: "lbl_follow".tr,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 14.v,
            ),
          ),
        ],
      ),
    );
  }
}
