import 'controller/account_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_trailing_image.dart';
import 'package:soumi_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:soumi_s_application7/widgets/custom_icon_button.dart';
import 'package:soumi_s_application7/widgets/custom_outlined_button.dart';

class AccountViewScreen extends GetWidget<AccountViewController> {
  const AccountViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SizedBox(
                    height: 852.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              height: 645.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle3809,
                                        height: 645.v,
                                        width: 414.h,
                                        alignment: Alignment.center),
                                    _buildAppBar()
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: EdgeInsets.only(top: 71.v),
                              decoration: AppDecoration
                                  .gradientOnPrimaryContainerToBluegray900,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 89.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGroup,
                                        height: 130.adaptSize,
                                        width: 130.adaptSize),
                                    Spacer(),
                                    _buildAccountDetails()
                                  ])))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 37.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowBack();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup9164,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildFollowDetails() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse11,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(25.h)),
          Padding(
              padding: EdgeInsets.only(left: 24.h, top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_rosalia".tr,
                        style: CustomTextStyles.titleLargePrimary),
                    SizedBox(height: 6.v),
                    Text("lbl_rose23".tr, style: theme.textTheme.bodyMedium)
                  ])),
          Spacer(),
          CustomOutlinedButton(
              width: 76.h,
              text: "lbl_follow".tr,
              margin: EdgeInsets.symmetric(vertical: 9.v),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
              buttonTextStyle: CustomTextStyles.titleSmallPrimary)
        ]);
  }

  /// Section Widget
  Widget _buildAccountCounts() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 7.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("lbl_post".tr, style: CustomTextStyles.titleLargeGray200),
            SizedBox(height: 10.v),
            Text("lbl_75".tr, style: CustomTextStyles.titleLargePrimary)
          ]),
          _buildFollowers(
              userFollowers: "lbl_following".tr, userZipcode: "lbl_3400".tr),
          _buildFollowers(
              userFollowers: "lbl_followers".tr, userZipcode: "lbl_6500".tr)
        ]));
  }

  /// Section Widget
  Widget _buildAction() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              onTap: () {
                onTapBtnPersonAddAltOne();
              },
              child:
                  CustomImageView(imagePath: ImageConstant.imgPersonAddAlt1)),
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(imagePath: ImageConstant.imgGroup9036)),
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(imagePath: ImageConstant.imgCall))
        ]));
  }

  /// Section Widget
  Widget _buildAccountDetails() {
    return GestureDetector(
        onTap: () {
          onTapAccountDetails();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 33.v),
            decoration: AppDecoration.white
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              _buildFollowDetails(),
              SizedBox(height: 30.v),
              _buildAccountCounts(),
              SizedBox(height: 26.v),
              _buildAction(),
              SizedBox(height: 24.v)
            ])));
  }

  /// Common widget
  Widget _buildFollowers({
    required String userFollowers,
    required String userZipcode,
  }) {
    return Column(children: [
      Text(userFollowers,
          style: CustomTextStyles.titleLargeGray200
              .copyWith(color: appTheme.gray200)),
      SizedBox(height: 10.v),
      Text(userZipcode,
          style: CustomTextStyles.titleLargePrimary
              .copyWith(color: theme.colorScheme.primary))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }

  /// Navigates to the accountDetailsScreen when the action is triggered.
  onTapAccountDetails() {
    Get.toNamed(
      AppRoutes.accountDetailsScreen,
    );
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapBtnPersonAddAltOne() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
