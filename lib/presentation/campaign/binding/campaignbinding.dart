import 'package:colsmsgateway/presentation/campaign/controller/campaigncontroller.dart';
import 'package:get/get.dart';

class CampaignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CampaignController());
  }
}
