import '../stream_page/widgets/streamlist_item_widget.dart';
import 'controller/stream_controller.dart';
import 'models/stream_model.dart';
import 'models/streamlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';

class StreamPage extends StatelessWidget {
  StreamPage({Key? key})
      : super(
          key: key,
        );

  StreamController controller = Get.put(StreamController(StreamModel().obs));

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
              SizedBox(height: 17.v),
              _buildStreamList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStreamList() {
    return Expanded(
      child: SizedBox(
        height: 602.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 21.h,
              );
            },
            itemCount:
                controller.streamModelObj.value.streamlistItemList.value.length,
            itemBuilder: (context, index) {
              StreamlistItemModel model = controller
                  .streamModelObj.value.streamlistItemList.value[index];
              return StreamlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
