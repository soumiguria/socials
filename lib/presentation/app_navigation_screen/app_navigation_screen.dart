import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          loginText: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Login Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Log In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Invite Friends".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.inviteFriendsScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Daily New - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dailyNewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Trending - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trendingContainerScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Stories".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.storiesScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Trending posts - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trendingPostsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Stories and Tweets".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.storiesAndTweetsScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Live".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.liveScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "For You".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forYouScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Page View".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageViewScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Comments".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.commentsScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Account View".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountViewScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Account Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountDetailsScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Friends".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.friendsScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Detailed Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailedProfileScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String loginText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  loginText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
