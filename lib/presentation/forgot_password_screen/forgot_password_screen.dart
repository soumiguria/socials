import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/core/utils/validation_functions.dart';
import 'package:soumi_s_application7/widgets/custom_elevated_button.dart';
import 'package:soumi_s_application7/widgets/custom_icon_button.dart';
import 'package:soumi_s_application7/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.deepPurpleA200,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.fillDeepPurpleA,
                              onTap: () {
                                onTapBtnArrowLeft();
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft)),
                          SizedBox(height: 83.v),
                          _buildPageTitle(),
                          SizedBox(height: 39.v),
                          CustomTextFormField(
                              controller: controller.emailController,
                              hintText: "lbl_email_id".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "err_msg_please_enter_valid_email".tr;
                                }
                                return null;
                              }),
                          SizedBox(height: 40.v),
                          CustomElevatedButton(
                              text: "lbl_log_in".tr,
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              onPressed: () {
                                onTapLogIn();
                              }),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildPageTitle() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_forgot_password".tr,
          style: CustomTextStyles.headlineLargePrimary),
      SizedBox(height: 5.v),
      Container(
          width: 352.h,
          margin: EdgeInsets.only(right: 29.h),
          child: Text("msg_please_enter_your2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargePrimary.copyWith(height: 1.50)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapLogIn() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }
}
