import '../controller/stories_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StoriesScreen.
///
/// This class ensures that the StoriesController is created when the
/// StoriesScreen is first loaded.
class StoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoriesController());
  }
}
