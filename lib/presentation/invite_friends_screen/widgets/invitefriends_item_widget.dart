import '../controller/invite_friends_controller.dart';
import '../models/invitefriends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class InvitefriendsItemWidget extends StatelessWidget {
  InvitefriendsItemWidget(
    this.invitefriendsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InvitefriendsItemModel invitefriendsItemModelObj;

  var controller = Get.find<InviteFriendsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: invitefriendsItemModelObj.kevinAllsrub!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
              margin: EdgeInsets.only(bottom: 8.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    invitefriendsItemModelObj.kevinAllsrub1!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    invitefriendsItemModelObj.yourEFriendsOn!.value,
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 21.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(6.h),
                child: CustomImageView(
                  imagePath: invitefriendsItemModelObj.checkmark!.value,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
