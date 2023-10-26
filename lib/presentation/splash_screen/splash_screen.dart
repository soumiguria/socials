import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurpleA200,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgSocialMedia1,
                          height: 120.adaptSize,
                          width: 120.adaptSize),
                      SizedBox(height: 20.v),
                      Text("lbl_social".tr,
                          style: theme.textTheme.displaySmall),
                      SizedBox(height: 5.v)
                    ]))));
  }
}
