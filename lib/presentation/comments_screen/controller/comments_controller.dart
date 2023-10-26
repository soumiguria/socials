import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/presentation/comments_screen/models/comments_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CommentsScreen.
///
/// This class manages the state of the CommentsScreen, including the
/// current commentsModelObj
class CommentsController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
