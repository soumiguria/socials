import '../profile_page/widgets/profile_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
                child: Column(children: [
                  SizedBox(height: 13.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLink,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 16.h)),
                  SizedBox(height: 37.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            onTapProfileDetails();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1480x80,
                                    height: 80.adaptSize,
                                    width: 80.adaptSize,
                                    radius: BorderRadius.circular(40.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, top: 11.v, bottom: 4.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_rosalia".tr,
                                              style: CustomTextStyles
                                                  .headlineLargeBlack90001),
                                          SizedBox(height: 8.v),
                                          Text("lbl_rose23".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray400)
                                        ]))
                              ])))),
                  SizedBox(height: 26.v),
                  _buildCounts(),
                  SizedBox(height: 26.v),
                  _buildMenu(),
                  SizedBox(height: 24.v),
                  _buildProfile()
                ]))));
  }

  /// Section Widget
  Widget _buildCounts() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("lbl_post".tr, style: CustomTextStyles.titleLargeGray500),
            SizedBox(height: 10.v),
            Text("lbl_75".tr, style: CustomTextStyles.titleLargeDeeppurpleA200)
          ]),
          _buildFollowers(
              followers: "lbl_following".tr, zipcode: "lbl_3400".tr),
          _buildFollowers(followers: "lbl_followers".tr, zipcode: "lbl_6500".tr)
        ]));
  }

  /// Section Widget
  Widget _buildMenu() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 16.v),
        decoration: AppDecoration.fillGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMenu,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgPlayCircleOutline,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgQueueMusic,
              height: 40.adaptSize,
              width: 40.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildProfile() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: controller
                    .profileModelObj.value.profileItemList.value.length,
                itemBuilder: (context, index) {
                  ProfileItemModel model = controller
                      .profileModelObj.value.profileItemList.value[index];
                  return ProfileItemWidget(model);
                }))));
  }

  /// Common widget
  Widget _buildFollowers({
    required String followers,
    required String zipcode,
  }) {
    return Column(children: [
      Text(followers,
          style: CustomTextStyles.titleLargeGray500
              .copyWith(color: appTheme.gray500)),
      SizedBox(height: 10.v),
      Text(zipcode,
          style: CustomTextStyles.titleLargeDeeppurpleA200
              .copyWith(color: appTheme.deepPurpleA200))
    ]);
  }

  /// Navigates to the detailedProfileScreen when the action is triggered.
  onTapProfileDetails() {
    Get.toNamed(
      AppRoutes.detailedProfileScreen,
    );
  }
}
