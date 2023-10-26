import 'package:soumi_s_application7/core/app_export.dart';
import 'package:soumi_s_application7/presentation/stream_page/models/stream_model.dart';

/// A controller class for the StreamPage.
///
/// This class manages the state of the StreamPage, including the
/// current streamModelObj
class StreamController extends GetxController {
  StreamController(this.streamModelObj);

  Rx<StreamModel> streamModelObj;
}
