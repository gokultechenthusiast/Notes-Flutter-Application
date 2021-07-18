import 'package:get/get.dart';
import 'package:notes/core/routes/bindings/editor_page_binder.dart';
import 'package:notes/modules/editor/ui/editor_page.dart';
part '../constants/route_name_constants.dart';

// this is the class where app routing is done
class Routes {
  static var routesList = [
    GetPage(
      name: RouteConstants.editPageRoute,
      page: () => EditorPage(),
      binding: EditorPageBinder(),
    ),
  ];
}
