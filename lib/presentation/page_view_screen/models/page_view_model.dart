import 'pageview_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [page_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PageViewModel {
  Rx<List<PageviewItemModel>> pageviewItemList =
      Rx(List.generate(6, (index) => PageviewItemModel()));
}
