import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/core/utils/validation_functions.dart';
import 'package:soumi_s_application7/widgets/custom_elevated_button.dart';
import 'package:soumi_s_application7/widgets/custom_icon_button.dart';
import 'package:soumi_s_application7/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  LogInScreen({Key? key}) : super(key: key);

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
                          SizedBox(height: 79.v),
                          _buildPageTitle(),
                          SizedBox(height: 33.v),
                          CustomTextFormField(
                              controller: controller.emailController,
                              hintText: "lbl_email_id".tr,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "err_msg_please_enter_valid_email".tr;
                                }
                                return null;
                              }),
                          SizedBox(height: 24.v),
                          Obx(() => CustomTextFormField(
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 13.v, 16.h, 13.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgAntdesigneyeinvisiblefilled,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize))),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 50.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: controller.isShowPassword.value,
                              contentPadding: EdgeInsets.only(
                                  left: 16.h, top: 15.v, bottom: 15.v))),
                          SizedBox(height: 27.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotPassword();
                                  },
                                  child: Text("msg_forgot_password".tr,
                                      style:
                                          CustomTextStyles.bodyLargePrimary))),
                          SizedBox(height: 30.v),
                          CustomElevatedButton(
                              text: "lbl_log_in".tr,
                              buttonStyle: CustomButtonStyles.fillPrimary),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildPageTitle() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_welcome_to_social".tr,
          style: CustomTextStyles.headlineLargePrimary),
      SizedBox(height: 12.v),
      Text("msg_please_enter_your".tr, style: CustomTextStyles.bodyLargePrimary)
    ]);
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
