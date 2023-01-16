import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeController extends GetxController {
  final deviceId = "".obs;
  final bottomBarIndex = 0.obs;

  void changeBottomBarIndex(int index) {
    bottomBarIndex.value = index;
  }

  @override
  void onReady() async {
    await deviceDetails();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> deviceDetails() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      var build = await deviceInfoPlugin.androidInfo;
      deviceId.value = build.id;
      print(build.id);
      //UUID for Android
    } else if (Platform.isIOS) {
      var data = await deviceInfoPlugin.iosInfo;
      deviceId.value = data.identifierForVendor!;
      print(data.identifierForVendor!);
    }
  }
}
