import '../controller/trending_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrendingContainerScreen.
///
/// This class ensures that the TrendingContainerController is created when the
/// TrendingContainerScreen is first loaded.
class TrendingContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingContainerController());
  }
}
