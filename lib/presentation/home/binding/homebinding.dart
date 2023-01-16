import 'package:colsmsgateway/presentation/dashboard/controller/dashboardcontroller.dart';
import 'package:colsmsgateway/presentation/setup/controller/setupcontroller.dart';
import 'package:get/get.dart';

import '../controller/homecontroller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => SetupController());
  }
}
