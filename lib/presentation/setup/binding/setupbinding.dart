import 'package:colsmsgateway/presentation/setup/controller/setupcontroller.dart';
import 'package:get/get.dart';

class SetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetupController());
  }
}
