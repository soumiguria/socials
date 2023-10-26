import '../invite_friends_screen/widgets/invitefriends_item_widget.dart';
import 'controller/invite_friends_controller.dart';
import 'models/invitefriends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:soumi_s_application7/widgets/app_bar/custom_app_bar.dart';

class InviteFriendsScreen extends GetWidget<InviteFriendsController> {
  const InviteFriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_invite_friends".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 15.v),
                      _buildInviteFriends()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapClose();
            }),
        actions: [
          AppbarSubtitleOne(
              text: "lbl_next".tr,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildInviteFriends() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.5.v),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                          height: 2.v,
                          thickness: 2.v,
                          color: theme.colorScheme.secondaryContainer)));
            },
            itemCount: controller
                .inviteFriendsModelObj.value.invitefriendsItemList.value.length,
            itemBuilder: (context, index) {
              InvitefriendsItemModel model = controller.inviteFriendsModelObj
                  .value.invitefriendsItemList.value[index];
              return InvitefriendsItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
