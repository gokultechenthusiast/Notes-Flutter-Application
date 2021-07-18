import 'package:get/get.dart';
import 'package:notes/modules/editor/controller/editor_page_controller.dart';

class EditorPageBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditorPageController());
  }
}
