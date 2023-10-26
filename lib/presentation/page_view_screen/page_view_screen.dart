import '../page_view_screen/widgets/pageview_item_widget.dart';
import 'controller/page_view_controller.dart';
import 'models/pageview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_trailing_image.dart';
import 'package:soumi_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:soumi_s_application7/widgets/custom_elevated_button.dart';
import 'package:soumi_s_application7/widgets/custom_floating_button.dart';
import 'package:soumi_s_application7/widgets/custom_text_form_field.dart';

class PageViewScreen extends GetWidget<PageViewController> {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 50.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(15.h),
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          theme.colorScheme.onPrimaryContainer,
                          appTheme.blueGray900
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPageView),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Spacer(),
                      SizedBox(height: 39.v),
                      _buildStreamDetails()
                    ]))),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBack,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgReply,
              margin: EdgeInsets.only(left: 16.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup8916,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 29.h))
        ]);
  }

  /// Section Widget
  Widget _buildPostDescription() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomElevatedButton(
          height: 28.v,
          width: 71.h,
          text: "lbl_4_6".tr,
          buttonStyle: CustomButtonStyles.fillDeepPurpleATL14,
          buttonTextStyle: CustomTextStyles.titleSmallPrimary),
      SizedBox(height: 22.v),
      Container(
          width: 300.h,
          margin: EdgeInsets.only(right: 81.h),
          child: Text("msg_haliford_luxury_hotel".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displayMedium)),
      SizedBox(height: 23.v),
      SizedBox(
          width: 381.h,
          child: Text("msg_halford_hotel_is".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.50)))
    ]);
  }

  /// Section Widget
  Widget _buildStreamDetails() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _buildPostDescription(),
          SizedBox(height: 98.v),
          SizedBox(
              height: 40.v,
              child: Obx(() => ListView.separated(
                  padding: EdgeInsets.only(right: 236.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 13.h);
                  },
                  itemCount: controller
                      .pageViewModelObj.value.pageviewItemList.value.length,
                  itemBuilder: (context, index) {
                    PageviewItemModel model = controller
                        .pageViewModelObj.value.pageviewItemList.value[index];
                    return PageviewItemWidget(model);
                  }))),
          SizedBox(height: 40.v),
          Padding(
              padding: EdgeInsets.only(right: 66.h),
              child: CustomTextFormField(
                  controller: controller.commentController,
                  hintText: "lbl_write_a_comment".tr,
                  hintStyle: CustomTextStyles.titleSmallPrimary,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.fillGray,
                  fillColor: appTheme.gray600))
        ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 50,
        width: 50,
        backgroundColor: appTheme.deepPurpleA200,
        child: CustomImageView(
            imagePath: ImageConstant.imgGroup9143,
            height: 25.0.v,
            width: 25.0.h));
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }
}
