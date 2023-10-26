import '../comments_screen/widgets/commentlist_item_widget.dart';
import 'controller/comments_controller.dart';
import 'models/commentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/widgets/custom_floating_button.dart';
import 'package:soumi_s_application7/widgets/custom_text_form_field.dart';

class CommentsScreen extends GetWidget<CommentsController> {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 382.h,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          onTap: () {
                            onTapImgClose();
                          }),
                      SizedBox(height: 34.v),
                      Text("lbl_comments".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 21.v),
                      _buildCommentList()
                    ])),
            bottomNavigationBar: _buildCommentBox(),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget
  Widget _buildCommentList() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.v),
                  child: SizedBox(
                      width: 382.h,
                      child: Divider(
                          height: 2.v,
                          thickness: 2.v,
                          color: theme.colorScheme.secondaryContainer)));
            },
            itemCount: controller
                .commentsModelObj.value.commentlistItemList.value.length,
            itemBuilder: (context, index) {
              CommentlistItemModel model = controller
                  .commentsModelObj.value.commentlistItemList.value[index];
              return CommentlistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildCommentBox() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 66.h, bottom: 39.v),
        child: Row(children: [
          Expanded(
              child: CustomTextFormField(
                  controller: controller.commentController,
                  hintText: "lbl_write_a_comment".tr,
                  textInputAction: TextInputAction.done,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillSecondaryContainer,
                  fillColor: theme.colorScheme.secondaryContainer))
        ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 50,
        width: 50,
        backgroundColor: appTheme.deepPurpleA200,
        child: CustomImageView(
            imagePath: ImageConstant.imgGroup9143,
            height: 25.0.v,
            width: 25.0.h));
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
