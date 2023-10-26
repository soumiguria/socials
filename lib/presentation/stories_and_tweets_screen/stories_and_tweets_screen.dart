import '../stories_and_tweets_screen/widgets/livelist_item_widget.dart';
import '../stories_and_tweets_screen/widgets/postlist_item_widget.dart';
import 'controller/stories_and_tweets_controller.dart';
import 'models/livelist_item_model.dart';
import 'models/postlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_title_searchview.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:soumi_s_application7/widgets/app_bar/custom_app_bar.dart';

class StoriesAndTweetsScreen extends GetWidget<StoriesAndTweetsController> {
  const StoriesAndTweetsScreen({Key? key}) : super(key: key);

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
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_stories".tr,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 19.v),
                      _buildLiveList(),
                      SizedBox(height: 22.v),
                      _buildPostList()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search".tr,
            controller: controller.searchController),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgGroup9086,
              margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildLiveList() {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 89.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 16.h);
                },
                itemCount: controller.storiesAndTweetsModelObj.value
                    .livelistItemList.value.length,
                itemBuilder: (context, index) {
                  LivelistItemModel model = controller.storiesAndTweetsModelObj
                      .value.livelistItemList.value[index];
                  return LivelistItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildPostList() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.v),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                          height: 2.v,
                          thickness: 2.v,
                          color: theme.colorScheme.secondaryContainer)));
            },
            itemCount: controller
                .storiesAndTweetsModelObj.value.postlistItemList.value.length,
            itemBuilder: (context, index) {
              PostlistItemModel model = controller
                  .storiesAndTweetsModelObj.value.postlistItemList.value[index];
              return PostlistItemWidget(model);
            })));
  }
}
