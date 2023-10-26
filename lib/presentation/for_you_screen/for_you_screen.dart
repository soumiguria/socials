import 'controller/for_you_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_subtitle.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_trailing_image.dart';
import 'package:soumi_s_application7/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ForYouScreen extends GetWidget<ForYouController> {
  const ForYouScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgForYou,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5.v),
                _buildForYou(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForYou() {
    return Container(
      decoration: AppDecoration.gradientBlackToBlack,
      child: CustomAppBar(
        leadingWidth: 66.h,
        leading: AppbarLeadingCircleimage(
          imagePath: ImageConstant.imgEllipse9,
          margin: EdgeInsets.only(left: 16.h),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Column(
            children: [
              AppbarSubtitle(
                text: "lbl_lucas_anna".tr,
              ),
              SizedBox(height: 5.v),
              AppbarSubtitleThree(
                text: "lbl_35_16".tr,
                margin: EdgeInsets.only(right: 76.h),
              ),
            ],
          ),
        ),
        actions: [
          AppbarTrailingImage(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
          ),
        ],
      ),
    );
  }
}
