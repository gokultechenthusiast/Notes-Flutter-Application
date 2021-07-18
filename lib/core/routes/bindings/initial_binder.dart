import 'package:get/get.dart';
import 'package:notes/core/controllers/shared_preference_controller.dart';

// this binder has all he controllers that are needed throughout the app
class InitialBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SharedPreferenceController());
  }
}
