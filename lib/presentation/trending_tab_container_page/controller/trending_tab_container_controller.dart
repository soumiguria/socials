import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/presentation/trending_tab_container_page/models/trending_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrendingTabContainerPage.
///
/// This class manages the state of the TrendingTabContainerPage, including the
/// current trendingTabContainerModelObj
class TrendingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TrendingTabContainerController(this.trendingTabContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<TrendingTabContainerModel> trendingTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
