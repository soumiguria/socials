import '../trending_page/widgets/trendingposts_item_widget.dart';
import 'controller/trending_controller.dart';
import 'models/trending_model.dart';
import 'models/trendingposts_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';

class TrendingPage extends StatelessWidget {
  TrendingPage({Key? key})
      : super(
          key: key,
        );

  TrendingController controller =
      Get.put(TrendingController(TrendingModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildTrendingPosts(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingPosts() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: controller
                .trendingModelObj.value.trendingpostsItemList.value.length,
            itemBuilder: (context, index) {
              TrendingpostsItemModel model = controller
                  .trendingModelObj.value.trendingpostsItemList.value[index];
              return TrendingpostsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
