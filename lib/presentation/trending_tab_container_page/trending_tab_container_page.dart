import '../trending_tab_container_page/widgets/stories_item_widget.dart';
import 'controller/trending_tab_container_controller.dart';
import 'models/stories_item_model.dart';
import 'models/trending_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/presentation/trending_page/trending_page.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_title_searchview.dart';
import 'package:soumi_s_application7/widgets/app_bar/appbar_trailing_image.dart';
import 'package:soumi_s_application7/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TrendingTabContainerPage extends StatelessWidget {
  TrendingTabContainerPage({Key? key}) : super(key: key);

  TrendingTabContainerController controller =
      Get.put(TrendingTabContainerController(TrendingTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 25.v),
                  _buildStories(),
                  SizedBox(height: 33.v),
                  _buildTabview(),
                  SizedBox(
                      height: 544.v,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            TrendingPage(),
                            TrendingPage(),
                            TrendingPage(),
                            TrendingPage()
                          ]))
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
          AppbarTrailingImage(
              imagePath: ImageConstant.imgProfile,
              margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildStories() {
    return SizedBox(
        height: 89.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller.trendingTabContainerModelObj.value
                .storiesItemList.value.length,
            itemBuilder: (context, index) {
              StoriesItemModel model = controller.trendingTabContainerModelObj
                  .value.storiesItemList.value[index];
              return StoriesItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 30.v,
        width: 398.h,
        child: TabBar(
            controller: controller.tabviewController,
            isScrollable: true,
            labelColor: appTheme.deepPurpleA200,
            unselectedLabelColor: appTheme.indigo100,
            tabs: [
              Tab(child: Text("lbl_trending".tr)),
              Tab(child: Text("lbl_latest".tr)),
              Tab(child: Text("lbl_discover".tr)),
              Tab(child: Text("lbl_daily_new".tr))
            ]));
  }
}
