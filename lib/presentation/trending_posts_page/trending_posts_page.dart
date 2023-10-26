import '../trending_posts_page/widgets/postitem_item_widget.dart';
import 'controller/trending_posts_controller.dart';
import 'models/postitem_item_model.dart';
import 'models/trending_posts_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:soumi_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TrendingPostsPage extends StatelessWidget {
  TrendingPostsPage({Key? key}) : super(key: key);

  TrendingPostsController controller =
      Get.put(TrendingPostsController(TrendingPostsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
                child: Column(
                    children: [SizedBox(height: 17.v), _buildPostItem()]))));
  }

  /// Section Widget
  Widget _buildPostItem() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(() => StaggeredGridView.countBuilder(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 4,
            crossAxisSpacing: 16.h,
            mainAxisSpacing: 16.h,
            staggeredTileBuilder: (index) {
              return StaggeredTile.fit(2);
            },
            itemCount: controller
                .trendingPostsModelObj.value.postitemItemList.value.length,
            itemBuilder: (context, index) {
              PostitemItemModel model = controller
                  .trendingPostsModelObj.value.postitemItemList.value[index];
              return PostitemItemWidget(model);
            })));
  }
}
