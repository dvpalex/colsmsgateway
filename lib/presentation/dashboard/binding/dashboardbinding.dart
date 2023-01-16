import 'package:colsmsgateway/presentation/dashboard/controller/dashboardcontroller.dart';
import 'package:get/instance_manager.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController(), fenix: true);
  }
}
